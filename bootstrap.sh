#!/bin/bash

# Define your list of packages
PACKAGES="bat btop catimg chromium cmake code fzf gh gimp gstreamer1-plugin-openh264 httpie krita lsd neofetch neovim openh264 scrub vlc xclip zsh dnf-plugins-core tmux"

# Function to check which package manager is available
find_package_manager() {
    declare -A osInfo;
    osInfo[/etc/debian_version]="apt-get"
    osInfo[/etc/fedora-release]="dnf"
    osInfo[/etc/gentoo-release]="emerge"
    osInfo[/etc/arch-release]="pacman"

    for key in ${!osInfo[@]}
    do
        if [[ -f $key ]]; then
            echo ${osInfo[$key]}
            return 0
        fi
    done
    echo "No known package manager detected" 1>&2
    return 1
}

# Store detected package manager
PACKAGE_MANAGER=$(find_package_manager)

case $PACKAGE_MANAGER in
    "apt-get")
        sudo apt-get update
        sudo apt-get install -y $PACKAGES
        ;;
    "dnf")
        sudo dnf update -y
        sudo dnf install -y $PACKAGES
        ;;
    "emerge")
        sudo emerge --update --newuse $PACKAGES
        ;;
    "pacman")
        sudo pacman -Syu
        sudo pacman -S --noconfirm $PACKAGES
        ;;
    *)
        echo "Unsupported package manager, cannot install packages."
esac
