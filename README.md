Build Raspbian Image
=========================================================

Build (and cross-compile) your own image for Raspberry Pi

Set of bash scripts for your Debian or Ubuntu Linux to create your own .img file for Raspberry Pi.
Have your own image with YOUR content in minutes!

*Initial script was taken from the [Klaus Maria Pfeiffer blog] (http://blog.kmp.or.at/2012/05/build-your-own-raspberry-pi-image/).*

About initial code
---------------------------------------------------------

Original script was created to burn Debian Wheezy, my target is Raspbian, which is better for Raspberry Pi. You can read more about Raspbian (and its difference from stock Debian) at project page: http://raspbian.org

Milestones of this project
---------------------------------------------------------
- [x] Add script to create minimal Raspbian image
- [ ] Add image mount / unmount script with cross-compilation environment for mounted system
- [ ] Be able to deploy images (add individual hostname and root password, OpenVPN client settings)

Instructions
---------------------------------------------------------

It is possible to prepare environment on almost every Linux, where chroot, QEMU and debootstrap exists.
I strictly recommend to install apt-cacher-ng (apt-get install apt-cacher-ng), that caches all downloaded deb packages and lets you to use deb_local_mirror, what's extreamely useful for further experiments, system won't download packages from internet anymore! [Read more about apt-cacher-ng] (https://www.unix-ag.uni-kl.de/~bloch/acng/html/config-servquick.html#config-client)

Install minimal set of packages:
./install.sh

Run build_raspbian_sd_card.sh script, do burn your SD card

	./build_raspbian_sd_card.sh /dev/sdX

OR to create IMG file (you'll find it under /tmp/rpi folder)

	./build_raspbian_sd_card.sh
