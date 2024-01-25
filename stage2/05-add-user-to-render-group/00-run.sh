#!/bin/bash -e

on_chroot << EOF
	usermod -a -G render ${FIRST_USER_NAME}
EOF
