# Variety Flatpak

There are a few TODOs and FIXMEs in the manifest file, but here are some additional notes.

## Things tested

- Setting the wallpaper in GNOME 3 on Wayland
- Displaying wallpapers from Bing
- Displaying wallpapers from Nasa
- Displaying wallpapers from a local folder inside $HOME/Pictures
- Displaying quotes from Goodreads, TheQuotationsPage.com, Unix fortune program and Urban Dictionary
- Wallpaper effects
- Clock
- Fetch folder clipboard monitoring
- Filtering options
- Wallpaper change timer
- Wallpaper change on start
- Indicator icon options (light, dark, 1, 2, 3, 4, current wallpaper, custom image and none)
- Desktop icon actions
- App indicator actions (including image and quote menu actions)
- Open folder
- Autostart

## Things untested

- Behaviour on DEs other than GNOME
- Behaviour on X11
- Displaying quotes from local text files
- Auto-rotation
- Display mode options
- Fetch folder drag 'n' drop
- Login screen support
- Profiles
- Variety slideshow integration

## Known issues

Some other issues that aren't Flatpak-specific:

- Flickr photo download fails with an API key error
- Google Earth View responds with a 404
- Fails to parse the Nat Geo server-side response
- AppIndicator -> Quote -> View at UNIX fortune program does nothing
- Set EXIF Rating submenu dropdown is empty
- AppIndicator -> Quote -> Copy to Clipboard does nothing
    - Might be a Wayland issue?
