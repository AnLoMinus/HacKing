#!/usr/bin/env python3
###############################################################################################################
## [Title]: privcheckerserver.py -- a Linux Privilege Escalation Check Script Server
## [Author]: Mike Merrill (linted) -- https://github.com/linted
##-------------------------------------------------------------------------------------------------------------
## [Details]:
## This script is intended to be executed remotely to enumerate search for common privilege escalation
## exploits found in exploit-db's database
##-------------------------------------------------------------------------------------------------------------
## [Warning]:
## This script comes as-is with no promise of functionality or accuracy.
##-------------------------------------------------------------------------------------------------------------
## [Modification, Distribution, and Attribution]:
## Permission is herby granted, free of charge, to any person obtaining a copy of this software and the
## associated documentation files (the "Software"), to use, copy, modify, merge, publish, distribute, and/or
## sublicense copies of the Software, and to permit persons to whom the Software is furnished to do so, subject
## to the following conditions:
##
## The software must maintain original author attribution and may not be sold
## or incorporated into any commercial offering.
##
## THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR ## IMPLIED, INCLUDING BUT NOT
## LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO
## EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES, OR OTHER LIABILITY, WHETHER
## IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE
## USE OR OTHER DEALINGS IN THE SOFTWARE.
###############################################################################################################

try:
    from os.path import isfile
    import argparse
    from concurrent.futures import ThreadPoolExecutor
    from csv import DictReader
    import asyncio
    from typing import List, OrderedDict, ByteString
except Exception as e:
    print("Caught exception: {}\nAre you running with python3?".format(e))
    exit(1)


_PORT_ = 4521
_IP_ = "0.0.0.0"
_SEARCHSPLOIT_ = "/usr/share/exploitdb/files_exploits.csv"


class SearchHandler():
    def __init__(self, database) -> None:
        self.db = database

    async def handle(self, reader: asyncio.StreamReader, writer: asyncio.StreamWriter):
        remote_addr = "{}:{}".format(*writer.get_extra_info('peername'))
        print("[$] Connection from {}".format(remote_addr) )
        loop = asyncio.get_running_loop()

        with ThreadPoolExecutor() as pool:
            futures = []
            while True: # this is how they do it in the docs... smh
                line = await reader.readline()
                if line.strip() == b'':
                    print("[$] received all")
                    break
                query = line.decode().strip()
                futures.append(loop.run_in_executor(pool, self.search, query))
                print("[ ] checking line: '{}'".format(query))
            
            if not futures:
                print("[-] No data received from {}".format(remote_addr))
            done,_ = await asyncio.wait(futures)

        for task in done:
            exception = task.exception()
            if exception:
                print("[-] Error: {}".format(exception))
                writer.write("[-] Error: {}".format(exception).encode())
            else:
                res = task.result()
                if res:
                    print(res.decode())
                    writer.write(res)

        print("[$] Closing connection from {}".format(remote_addr))
        await writer.drain()
        writer.close()


    def search(self, data: str) -> ByteString:
        query = data.split(" ")
        query[-1] = query[-1][:3]  # cut down on the last item which should be the version number
        output = []
        for rows in self.db:
            if all([term in rows["description"] for term in query]):
                output.append("\t".join((rows["description"], rows["file"])))
        if output:
            return ("[+] {}\n".format(data) + "\n".join(output)).encode()
        return b''


async def start_server(ip, port, database):
    handler = SearchHandler(database)
    server = await asyncio.start_server(handler.handle, ip, port)
    print("[+] Listening on {}:{}".format(ip, port))

    async with server:
        await server.serve_forever()


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("-i", "--ip", help="Ip to listen on", default=_IP_)
    parser.add_argument("-p", "--port", help="Port to listen on", default=_PORT_)
    parser.add_argument("-f", "--file", help="The exploit csv to use", default=_SEARCHSPLOIT_)
    args = parser.parse_args()

    print("[ ] Starting up")
    database = parse_exploitdb(args.file)
    asyncio.run(start_server(args.ip, args.port, database))

def parse_exploitdb(path: str) -> List[OrderedDict[str,str]]:
    database = []
    if not isfile(path):
        raise FileNotFoundError(
            "[-] Cannot find csv database at {}\nFor more details visit: https://github.com/offensive-security/exploit-database".format(
                path
            )
        )

    # parse the exploit database and collect all the results
    try:
        with open(path, 'r') as Fin:
            reader = DictReader(Fin)
            for lines in reader:
                # add the database to the exploit server for non global persistance
                database.append(lines)
    except Exception as e:
        raise AttributeError(
            "[-] Exception caught while attempting to parse database file. {}".format(e)
        )
    return database

if __name__ == "__main__":
    # parse the args
    main()