#!/bin/bash -e

on_chroot << EOF
	FLUTTER_PI_DIR="flutter-pi"
	
	if test -d $FLUTTER_PI_DIR; then
		echo Cleaning up old flutter-pi build...
  		rm -rf $FLUTTER_PI_DIR
	fi
	# git clone https://github.com/DoumanAsh/flutter-pi.git -b audioplayers_v4 $FLUTTER_PI_DIR
	git clone https://github.com/ardera/flutter-pi.git $FLUTTER_PI_DIR
	cd $FLUTTER_PI_DIR
	mkdir build && cd build
	cmake ..
	make -j`nproc`
	sudo make install
	rm -rf $FLUTTER_PI_DIR
EOF
