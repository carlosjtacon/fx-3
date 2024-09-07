#! /bin/bash 
# usage ./posts.sh fx-3 202210_BW_dorset_london

pages_dir="../../_pages/$1/"
template="---
permalink: /$1/$2.html
layout: roll
camera: $1
roll: $2
---

<!-- Description. -->
"
echo "$template" > $pages_dir$2.md

photos_dir="../../_photos/$1/"
last_post_number=`basename -s .md $(ls $photos_dir | sort -V | tail -n 1)`
last_post_number=`expr "$last_post_number"`

for i in $1/$2*.jpeg
do
    photo_basename=`basename -s .jpeg $i`
    template="---
camera: $1
photo_filename: ${photo_basename}
---

English.

Español.
"
    last_post_number=$(( $last_post_number + 1))
    filename=$(printf %04d $last_post_number).md
    echo "$template" > $photos_dir$filename
done