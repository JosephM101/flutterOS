#!/bin/bash -e

on_chroot << EOF
	sudo apt-get remove -y --purge cmake build-essential git make
	# sudo apt-get remove -y --purge gcc-*
	# sudo apt-get remove -y --purge libgcc-*
	# sudo apt-get remove -y --purge linux-headers-*
	sudo apt clean
	sudo apt autoclean
	sudo apt autoremove -y
EOF
