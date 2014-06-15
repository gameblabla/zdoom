#!/bin/sh


#FILE=$(dialog --stdout --title "Please choose a WAD file" --fselect /usr/local/share/zdoom/ 14 48)
#./zdoom -iwad ${FILE}

cd `dirname $0`
./zdoom -iwad $1
