# applescript-ipad-frame-photo-exporter
AppleScript to export selected Photos app images, resize and caption them for iPad frames

## Prerequisites
1. macOS Photos app
2. macOS Keynote app
3. One or more first gen iPad that are in service as a photo frame (locked and showing photo slideshows from the lock screen). Each iPad is assumed to be fixed in either a vertical (portrait) or horizontal (landscape) position.

## Usage
_The script is not yet a Photos app service._

1. Open `export-ipad-photo-frame.scpt` in _macOS Script Editor_.
2. Open _macOS Photos_ app and select some images.
3. Press the play button on the _macOS Script Editor_.

## What happens
1. _Photos app_ will export the selected images to a dated folder in your _Documents_ folder.
2. _Finder_ will open on the dated folder and a dialog will confim how many photos were exported. Click the _Continue_ button. (The script will terminate when no images are exported.)
3. The exported images will be distributed into one folder per iPad based on the iPad orientation. (I have three iPads, two are portrait and one is landsscape. You can define your iPads by modifying the appropriate properties at the top of the script.)
4. _Keynote app_ will be used to resize the images down to first gen iPad screen resolution and lightly caption the image in the bottom left corner with either the EXIF Description, EXIF Title or EXIF Create Date. (The font used to caption the image is configurable by changing a property at the top of the script. I happen to use a font that represents my handwriting and was generated using [fontifier.com](http://www.fontifier.com/index.html). There are many similar services. Pick one if you want.)
5. When the script is finished, you will be left with one folder per iPad containing the images for that iPad. Now transfer the photos from your Mac to each iPad. I use [PhotoSync iOS app](https://apps.apple.com/us/app/photosync-transfer-photos/id415850124) and the [PhotoSync macOS app](https://apps.apple.com/us/app/photosync-transfer-photos/id418818452). I've had flawless transfers using this pair of apps as long as all devices are on the same WiFi network.
6. Once the images are transfered to each iPad, lock them. Tap the iPad physical home button and choose the photo slideshow app that is on the lock screen of the iPad.

_Photos and better description of the process, to come._
