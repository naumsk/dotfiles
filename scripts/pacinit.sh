#!/usr/bin/env bash

echo "Installing the needed packages"

cat ./packageslist_pacman | xargs sudo pacman -S
cat ./packageslist_yay | xargs yay -S

exit 0
