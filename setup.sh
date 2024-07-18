!#/bin/bash

cp -r "cinnamon (config)" ~/.config/cinnamon
cp -r "cinnamon (local)" ~/.local/share/cinnamon
dconf load /org/cinnamon/ < cinnamon-desktop.conf
dconf load /org/cinnamon/desktop/peripherals/mouse/ < cinnamon-peripheral.conf
