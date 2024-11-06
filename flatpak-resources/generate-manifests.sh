#!/bin/sh
set -e

APP_MANIFEST="flatpak-resources/io.github.varietywalls.variety.yml"

curl -sSfLO https://raw.githubusercontent.com/flatpak/flatpak-builder-tools/9a48b5e30a53715f1e71a5b804ff99fa46c430a3/pip/flatpak-pip-generator

chmod u+x flatpak-pip-generator

echo "Creating and activating venv..."
python3 -m venv .venv
. .venv/bin/activate

echo "Installing python dependencies..."
python3 -m pip install requirements-parser pyyaml

echo "Installing Flatpak dependencies..."
# Read the runtime from the app manifest to avoid repeating it here or
# unnecessarily downloading a different runtime.
RUNTIME="$(python3 -c "import yaml; content = yaml.safe_load(open('$APP_MANIFEST', 'r')); print('{}//{}'.format(content['sdk'], content['runtime-version']))")"

flatpak --user remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
flatpak --user install -y flathub "$RUNTIME"

echo "Generating manifests..."
./flatpak-pip-generator --runtime="$RUNTIME" --requirements-file flatpak-resources/build-requirements.txt --output flatpak-resources/build-requirements --cleanup=all --build-isolation --ignore-pkg patchelf
./flatpak-pip-generator --runtime="$RUNTIME" patchelf --output flatpak-resources/non-isolated-build-requirements --cleanup=all

# Handle lxml, configobj and pillow separately because they can't be installed with build isolation enabled.
./flatpak-pip-generator --runtime="$RUNTIME" --requirements-file requirements.txt --output flatpak-resources/requirements --build-isolation --ignore-pkg lxml configobj pillow dbus-python
./flatpak-pip-generator --runtime="$RUNTIME" lxml configobj pillow dbus-python --output flatpak-resources/non-isolated-requirements --ignore-installed lxml 
