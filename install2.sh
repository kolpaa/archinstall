#!/bin/bash
ln -sf /usr/share/zoneinfo/Asia/Yekaterinburg /etc/localtime &&

hwclock --systohc &&
sed -i 's/#en_US.UTF-8 UTF-8/en_US.UTF-8 UTF-8/' /etc/locale.gen &&
sed -i 's/#ru_RU.UTF-8 UTF-8/ru_RU.UTF-8 UTF-8/' /etc/locale.gen &&
locale-gen &&

echo LANG=en_US.UTF-8 > /etc/locale.conf &&

echo fatfuck > /etc/hostname &&

echo -e "0451\n0451\n" | passwd &&

useradd -G wheel -s /bin/bash -m kolpa &&
echo -e "1540\n1540\n" | passwd kolpa &&

sed -i 's/# %wheel ALL=(ALL:ALL) NOPASSWD: ALL/%wheel ALL=(ALL:ALL) NOPASSWD: ALL/' /etc/sudoers &&

grub-install &&

grub-mkconfig -o /boot/grub/grub.cfg &&
pacman -S archlinux-keyring --noconfirm &&
#pacman -Syyu gnome gnome-tweaks gnome-shell-extensions qt5ct kvantum firefox base-devel git &&
#pacman -Syyu tlp tumbler network-manager-applet lxappearance file-roller gvfs mpv nm-connection-editor mousepad dunst flameshot unzip openssh go git base-devel feh firefox rofi kitty xorg xorg-xinit polkit xdg-user-dirs thunar nautilus polkit-gnome pipewire pipewire-pulse pipewire-alsa pipewire-jack bluez bluez-utils blueman keepassxc kvantum qt5ct slock qbittorrent telegram-desktop electrum fceux cmus rhythmbox ttf-font-awesome  xss-lock xclip picom &&
#pacman -Syyu firefox base-devel git xorg plasma kwrite konsole dolphin okular 
systemctl enable NetworkManager &&

#sudo -u kolpa bash << EOF
#  cd /home/kolpa
#  git clone https://aur.archlinux.org/yay.git &&
#  cd yay &&
#  makepkg -si --noconfirm
#  yay -S pfetch-btw illum coinmon --noconfirm &&
#  cd /home/kolpa &&
#  git clone https://github.com/kolpaa/archinstall &&
#  cd archinstall/res &&
#  chmod +x mystatus restatus bitcoin_price &&
#  mkdir ~/.config/gtkrc-3.0 &&
#  cp settings.ini ~/.config/gtkrc-3.0/settings.ini &&
#  cp .gtkrc-2.0 ~/.gtkrc-2.0 &&
#  cp .xinitrc ~/.xinitrc &&
#  cp .bashrc  ~/.bashrc &&
#  cp .bash_profile ~/.bash_profile &&
#  cp .Xresources ~/.Xresources &&
#  cp picom.conf ~/.config/picom.conf &&
#  tar -xvf Tela-red.tar.xz &&  
#  unzip Material-Black-Cherry-3.38_1.9.3.zip 
#  mkdir /home/kolpa/.themes &&
#  mkdir /home/kolpa/.icons &&
#  mv Material-Black-Cherry-3.38 /home/kolpa/.themes/Material-Black-Cherry &&
#  mv Tela-red /home/kolpa/.icons/Tela-red &&
#  sudo systemctl enable illum &&
#  sudo systemctl enable bluetooth &&
#  sudo systemctl enable sshd &&
#  cd ~/archinstall/dwm &&
#  sudo make clean install
#EOF
