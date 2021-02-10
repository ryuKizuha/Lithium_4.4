#!/bin/bash

export KERNELNAME=Lithium

export LOCALVERSION=typeG~

export KBUILD_BUILD_USER=zRyu

export KBUILD_BUILD_HOST=#FunProject

export TOOLCHAIN=gcc

export DEVICES=lavender

source helper

gen_toolchain

send_msg "⏳ lagi build kernelnya ${KERNELNAME} ${LOCALVERSION} for lavender,jasmine,wayne..."

START=$(date +"%s")

for i in ${DEVICES}
do

	build ${i} -oldcam

	build ${i} -newcam

done

DATE_END=$(date +"%s")

DIFF=$(($DATE_END - $DATE_START))

echo "Time: $(($DIFF / 60)) minute(s) and $(($DIFF % 60)) seconds."
echo
