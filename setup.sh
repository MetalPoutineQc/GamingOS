#!/bin/bash

cp -r "cinnamon (config)" ~/.config/cinnamon
cp -r "cinnamon (local)" ~/.local/share/cinnamon
dconf load /org/cinnamon/ < cinnamon-desktop.conf
dconf load /org/cinnamon/desktop/peripherals/mouse/ < cinnamon-peripheral.conf
apt update && apt upgrade -y
apt install steam -y
apt install gamemode -y
flatpak install --app com.github.tchx84.Flatseal com.github.Matoking.protontricks net.davidotek.pupgui2 com.usebottles.bottles com.discordapp.Discord -y
cd /usr/src
sudo wget https://github.com/flightlessmango/MangoHud/releases/download/v0.7.2/MangoHud-0.7.2.r0.g7b80f73.tar.gz
sudo gunzip MangoHud-*.tar.gz && sudo tar -xvf MangoHud-*.tar
cd /usr/src/Mangohud
sudo ./mangohud-setup.sh install
echo "Installation terminée"
