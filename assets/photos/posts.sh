#! /bin/bash 
# usage ./posts.sh 202210_BW_dorset_london

photos_dir="../../_photos/"
last_post_number=`basename -s .md $(ls $photos_dir | sort -V | tail -n 1)`
last_post_number=`expr "$last_post_number"`

for i in $1*.jpeg
do
    photo_basename=`basename -s .jpeg $i`
    template="---
photo_filename: ${photo_basename}
---

Description.
"
    last_post_number=$(( $last_post_number + 1))
    filename=$(printf %04d $last_post_number).md
    echo "$template" > $photos_dir$filename
done