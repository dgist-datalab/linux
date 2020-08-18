#!/bin/bash

git clean -fdx
rm -rf /tmp/obj
mkdir /tmp/obj
cp defconfig /tmp/obj/.config
make O=/tmp/obj bindeb-pkg -j64
mv /tmp/linux* .
