#!/bin/bash

export ARCH=arm
export CROSS_COMPILE=/home/baelish/prebuilts/gcc/linux-x86/arm/arm-linux-androideabi-4.9/bin/arm-linux-androideabi-

mkdir out

make -C $(pwd) O=out  j4primelte_defconfig
make -j16 -C $(pwd) O=out CROSS_COMPILE=arm-linux-androideabi-
 
cp out/arch/arm/boot/zImage $(pwd)/arch/arm/boot/zImage
