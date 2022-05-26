#!/bin/sh
set -e
. ./build.sh
mkdir -p isodir
mkdir -p isodir/boot
mkdir -p isodir/boot/grub

cp sysroot/boot/alphaos.kernel isodir/boot/alphaos.kernel
cat > isodir/boot/grub/grub.cfg << EOF
menuentry "alphaos" {
	multiboot /boot/alphaos.kernel
}
EOF
grub-mkrescue -o alphaos.iso isodir
