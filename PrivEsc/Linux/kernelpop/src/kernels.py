"""
Class for holding kernel windows for vulnerabilities
"""
from distutils.version import StrictVersion

class KernelWindow:
	def __init__(self, distro, confirmation, lowest_major, lowest_minor, lowest_release, highest_major, highest_minor,
		highest_release, highest_patch_level=None):
		self.distro = 			distro
		self.confirmation = 	confirmation 	# string, either 'confirmed' or 'potential'
		self.lowest_major = 	lowest_major
		self.lowest_minor = 	lowest_minor
		self.lowest_release = 	lowest_release
		self.highest_major = 	highest_major
		self.highest_minor = 	highest_minor
		self.highest_release = 	highest_release
		self.patch_level = 		highest_patch_level

	def kernel_in_window(self, distro, kernel):
		"""
		Returns True if the given kernel is within the kernel window
		:param kernel: dict of {"major", "minor", "release", "patch_level"}
		:return: status if in, otherwise NOT_VULNERABLE
		"""
		# check for self.distro in kernel.distro so that we can match generics to all kernels of a type:
		# 	i.e. "debian" will be in "debian7" and "debian8" etc...
		if not self.distro in distro:
			return None
		else:
			window_low = "{}.{}.{}".format(self.lowest_major, self.lowest_minor, self.lowest_release)
			window_high = "{}.{}.{}".format(self.highest_major, self.highest_minor, self.highest_release)

			# kernel is actually not a kernel object but a dict of {"major", "minor", "release", "patch_level"}
			kernel_v = "{}.{}.{}".format(kernel["major"], kernel["minor"], kernel["release"])
			if StrictVersion(window_low) <= kernel_v <= StrictVersion(window_high):
				return self.confirmation
			else:
				return None

	def jsonify(self):
		return {
			"distro": 				self.distro,
			"confirmation": 		self.confirmation,
			"lowest_major": 		self.lowest_major,
			"lowest_minor": 		self.lowest_minor,
			"lowest_release": 		self.lowest_release,
			"highest_major": 		self.highest_major,
			"highest_minor": 		self.highest_minor,
			"highest_release": 		self.highest_release,
			"patch_level": 			self.patch_level
		}
