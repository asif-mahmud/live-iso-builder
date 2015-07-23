# The Procedure 

The whole procedure is quite simple and straight forward.

1. Create directories :

Create necessary directories first. These dirs are -

	* chroot : for creating a copy of the running OS.
	* image : this the main ISO image structure.
	* image/isolinux : syslinux files and binaries.
	* image/live : this will contain the live filesystem and linux images to boot.

2. Sync :

Create a copy of the running OS and put it in chroot directory.

3. Configure chroot :

	* Delete current user
	* Create a live user
	* Keep the old root password
	* Update initramfs

4. Create live filesystem :

Create a live filesystem in squashfs format and put it in image/live directory.

5. Create the ISO :

Create the ISO with a given syslinux configuration and binaries.
 
