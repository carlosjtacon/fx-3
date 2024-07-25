#! /bin/bash 
# requires imagemagick installed - brew install imagemagick
THUMB_MAX=1024
for i in *.jpeg
do
    if [[ $i != *-thumb.webp ]]
    then
        filename=`basename -s .jpeg $i`
        magick "$i" -thumbnail "${THUMB_MAX}>" "$filename-thumb.webp"
    fi
done