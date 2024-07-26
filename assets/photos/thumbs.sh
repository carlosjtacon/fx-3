#! /bin/bash 
# requires imagemagick installed - brew install imagemagick
THUMB_MAX=1024
for i in *.jpeg
do
    filename=`basename -s .jpeg $i`
    [ ! -f "$filename-thumb.webp" ] && magick "$i" -thumbnail "${THUMB_MAX}>" "$filename-thumb.webp"
done