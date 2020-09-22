#!/bin/sh
#FILE=$(dialog --stdout --title "Please choose a WAD file" --fselect /usr/local/share/zdoom/ 14 48)
#./zdoom -iwad ${FILE}
cd `dirname $0`
export ALSOFT_LOGLEVEL=0
export ALSOFT_CONF=./al.conf
./zdoom -iwad "$1"
