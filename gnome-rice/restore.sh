#!/bin/zsh

echo "Restaurando configurações do GNOME..."

cd ~/dotfiles/gnome-rice/

dconf load /org/gnome/shell/extensions/ < extensions.ini
dconf load /org/gnome/desktop/interface/ < interface.ini
dconf load /org/gnome/desktop/wm/preferences/ < wm-preferences.ini

echo "GNOME restaurado com sucesso! (Talvez seja necessário deslogar para aplicar tudo)"