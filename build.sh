#!/bin/bash

export KERNELNAME=Lithium

export LOCALVERSION=XXX

export KBUILD_BUILD_USER=zRyu

export KBUILD_BUILD_HOST=#FunProject

export TOOLCHAIN=gcc

export DEVICES=lavender,a26x

source helper

gen_toolchain

send_msg "⏳ lagi build kernelnya ${KERNELNAME} ${LOCALVERSION} for lavender,jasmine,wayne..."

send_psn "⏳ lagi build kernelnya ${KERNELNAME} ${LOCALVERSION} for lavender,jasmine,wayne..."
send_msg "⏳ lagi build kernelnya ${KERNELNAME} ${LOCALVERSION} for EAS lavender,wayne,jasmine..."

send_mes " lagi build kernelnya ${KERNELNAME} ${LOCALVERSION} for EAS lavender,wayne,jasmine. . ."
START=$(date +"%s")

for i in ${DEVICES}
do

	build ${i} -oldcam

	build ${i} -newcam

done

END=$(date +"%s")

DIFF=$(( END - START ))


send_msg "✅ Build completed in $((DIFF / 60))m $((DIFF % 60))s


send_psn "✅ Build completed in $((DIFF / 60))m $((DIFF % 60))s
