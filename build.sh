#!/bin/bash

export KERNELNAME=Lithium

export LOCALVERSION=~Testing~

export KBUILD_BUILD_USER=zRyu

export KBUILD_BUILD_HOST=#FunProject

export TOOLCHAIN=gcc

export DEVICES=lavender

source helper

gen_toolchain

send_msg "⏳ lagi build kernelnya ${KERNELNAME} ${LOCALVERSION} for ${DEVICES}..."

START=$(date +"%s")

for i in ${DEVICES//,/ }
do

	build ${i} -oldcam

        build ${i} -newcam

done

END=$(date +"%s")

DIFF=$(( END - START ))
