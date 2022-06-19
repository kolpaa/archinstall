#!/bin/bash

timedatectl set-ntp true &
chmod +x install2.sh
#printf "Enter a disk for installation: "
#read DISK
DISK=/dev/nvme0n1
parted $DISK mktable gpt &&
parted $DISK mkpart primary fat32 1M 500M &&
parted $DISK set 1 esp on &&
parted $DISK mkpart primary ext4 500M 100% &&

mkfs.vfat -F 32 ${DISK}p1 &&
mkfs.ext4 -F ${DISK}p2 &&

mount ${DISK}p2 /mnt &&
mount --mkdir ${DISK}p1 /mnt/boot/efi &&

#pacstrap /mnt base linux linux-firmware base-devel git sudo vim gnome grub efibootmgr intel-ucode #firefox opessh networkmanager gnome &&

pacstrap /mnt base linux linux-firmware sudo vim grub efibootmgr intel-ucode networkmanager &&

cp ./install2.sh /mnt &&
genfstab -U /mnt >> /mnt/etc/fstab &&

arch-chroot /mnt ./install2.sh
