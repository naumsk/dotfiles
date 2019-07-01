#!/usr/bin/env bash

echo "Updating pacman ..."
sudo pacman -Syyuu
echo "Updating yay ..."
yay -Syyuu
echo "Exporting installed packages to a file"
sudo pacman -Qq | grep -v "$(sudo pacman -Qqm)" > ./packageslist_pacman
yay -Qq | grep "$(sudo pacman -Qqm)" > ./packageslist_yay

exit 0
