#!/bin/bash -e

on_chroot << EOF
	echo "Updating font cache..."
	sudo fc-cache
EOF
