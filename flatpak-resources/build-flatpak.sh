#!/bin/sh

flatpak-builder --install-deps-from flathub --user --ccache --force-clean --install --repo=flatpak-repo flatpak flatpak-resources/io.github.varietywalls.variety.yml