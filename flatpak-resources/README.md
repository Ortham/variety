# Variety Flatpak

## Things tested

- Setting the wallpaper in GNOME 3 on Wayland
- Displaying wallpapers from Bing
- Displaying wallpapers from Nasa
- Displaying wallpapers from a local folder inside $HOME/Pictures
- Displaying quotes from Goodreads, local text files, TheQuotationsPage.com, Unix fortune program and Urban Dictionary
- Auto-rotation
- Display mode options
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

- Behaviour on DEs other than GNOME 3
- Behaviour on X11
- Fetch folder drag 'n' drop
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
- Login screen support doesn't seem to do anything
    - Might be an issue specific to GNOME 3?

## Other notes

- I've used `io.github.varietywalls.variety` as the app ID, but maybe it should be `com.peterlevi.Variety`? [Verifying the app on Flathub](https://docs.flathub.org/docs/for-app-authors/verification/#im-publishing-an-app-on-flathub-how-do-i-get-it-verified) is easier using the GitHub ID than the website ID.
- The AppData XML file probably needs changes before it'll pass [Flathub validation](https://docs.flathub.org/docs/for-app-authors/metainfo-guidelines/), I haven't checked.
- There are a couple of TODOs in the manifest file.
