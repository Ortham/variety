# Variety Flatpak

There are a few TODOs and FIXMEs in the manifest file, but here are some additional notes.

## Things tested

- Setting the wallpaper in GNOME 3
- Displaying wallpapers from Bing
- Displaying wallpapers from Nasa
- Displaying wallpapers from a local folder inside $HOME/Pictures
- Displaying quotes from Goodreads, TheQuotationsPage.com, UNIX fortune program and Urban Dictionary
- Wallpaper effects
- Clock
- Fetch folder clipboard monitoring
- Filtering options
- Wallpaper change timer
- Wallpaper change on start
- Indicator icon options (light, dark, 1, 2, 3, 4, current wallpaper, custom image and none)

## Things untested

- Behaviour on DEs other than GNOME
- Displaying quotes from local text files
- Auto-rotation
- Display mode options
- Fetch folder drag 'n' drop
- Login screen support

## Known issues

- Favourite operations: only Copy is shown no matter which option is selected in the dropdown
- The autostart option creates a variety.desktop file in the right place, but its Exec command references the variety bin path inside the Flatpak sandbox, so won't work.
    - Probably need to use a different template if Variety is running as a Flatpak.

Some other issues that probably aren't Flatpak-specific:

- Flickr photo download fails with an API key error
- Google Earth View responds with a 404
- Fails to parse the Nat Geo server-side response
