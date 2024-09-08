### Filmstrip

Jekyll site where my film pictures live, all of them taken with the Yashica FX-3 Super, for now.

- `index.html` - Just a picture of the camera, as a gate to the filmstrip.
- `filmstrip.html` - All the negatives live here, they get developed automatically.
- `photo.html` - Photo details page that loads the high res version. Has controls to navigate.
- `_photos` - The collection that drives all the photos, they just have `photo_filename` and content as description at the moment. The photos are stored in `/assets/photos/`.


To add new photos:

1. Add photos in `/assets/photos/$camera` with the name `$collectionName_$photoNumber.jpeg`.
2. Should use [ImageOptim](https://imageoptim.com/mac) or similar sofware to compress the new photos (I have it as lossy 85%-95% quality).
3. Go to `/assets/photos/` in the terminal. 
   - Execute `./thumbs.sh $camera` to generate the webp thumbnails. I rotate the portrait photos first to give it a more analog feel.
   - Execute `./posts.sh $camera $collectionName` to generate the posts.
4. Edit the new `_posts` description.


To-do:
- Create disponsable camera section
- camera story page, maybe just write under the fx-3 camera page as content
