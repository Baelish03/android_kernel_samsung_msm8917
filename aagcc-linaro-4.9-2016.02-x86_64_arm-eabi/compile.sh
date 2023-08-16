export CROSS_COMPILE=/home/baelish/Desktop/kernel_modificati/android_kernel_samsung_msm8917-lineage-19.1-old/aagcc-linaro-4.9-2016.02-x86_64_arm-eabi/bin/arm-eabi-
export ARCH=arm
make clean
make mrproper
mkdir -p out
make O=out clean
make O=out mrproper
make O=out j4primelte_defconfig
make O=out -j4

