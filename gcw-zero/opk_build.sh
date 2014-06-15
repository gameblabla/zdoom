#!/bin/sh
rm -rf zdoom.opk
cp -v ../gcwbuild/zdoom ../gcwbuild/zdoom.pk3 ./opk-data/ 
mksquashfs opk-data zdoom.opk -all-root -noappend -no-exports -no-xattrs
