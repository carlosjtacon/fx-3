#! /bin/bash 
# requires imagemagick installed - brew install imagemagick
THUMB_MAX=1024
for i in $1/*.jpeg
do
    filename=`basename -s .jpeg $i`
    [ ! -f "$1/$filename-thumb.webp" ] && magick "$i" -thumbnail "${THUMB_MAX}>" "$1/$filename-thumb.webp"
done