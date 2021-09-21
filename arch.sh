read -p "Full setup? [Yes] : " setupType
setupType=${setupType:-Yes}

pacman -Sy

echo "##### REMOVING SOFTWARE #####"
pacman -R --noconfirm yakuake thunderbird qbittorrent transmission kcontacts kemoticons

echo "##### ENABLING AUR #####"
pacman -S --needed --noconfirm base-devel

echo "##### INSTALLING LITE SOFTWARE #####"
pacman -S --needed --noconfirm net-tools konsole kate


if [ $setupType == "Yes" ]; then
  echo "##### UPDATING MIRRORS #####"
  pacman-mirrors --fasttrack

  echo "##### INSTALLING HEAVY SOFTWARE #####"
  pacman -S --noconfirm --needed okular discord deluge-gtk cura steam
fi


echo "##### UPDATING SYSTEM #####"
pacman -Syu --noconfirm
