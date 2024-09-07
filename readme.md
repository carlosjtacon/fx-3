### FX-3

Jekyll site where my film pictures live, all of them taken with the Yashica FX-3 Super.

- `index.html` - Just a picture of the camera, as a gate to the filmstrip.
- `filmstrip.html` - All the negatives live here, they get developed automatically.
- `photo.html` - Photo details page that loads the high res version. Has controls to navigate.
- `_photos` - The collection that drives all the photos, they just have `photo_filename` and content as description at the moment. The photos are stored in `/assets/photos/`.


To add new photos:

1. Add photos in `/assets/photos/` with the name `$collectionName_$photoNumber.jpeg`.
2. Should use [ImageOptim](https://imageoptim.com/mac) or similar sofware to compress the new photos (I have it as lossy 85%-95% quality).
3. Go to `/assets/photos/` in the terminal. 
   - Execute `./thumbs.sh` to generate the webp thumbnails. I rotate the portrait photos first to give it a more analog feel.
   - Execute `./posts.sh $collectionName` to generate the posts.
4. Edit the new `_posts` description.


To-do:
- Roll category/collection page. 
- Support for other cameras (disponsable, maybe medium format fuji, maybe half frame kodak)
- filmstrip.carlosjtacon.com/fx-3
- spanish / english : maybe just with css first line one language second line another color
- camera story page
