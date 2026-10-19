#!/bin/zsh

echo "Restaurando configurações do GNOME..."
cd ~/dotfiles/gnome-rice/

dconf load /org/gnome/desktop/interface/ < interface.ini
dconf load /org/gnome/desktop/wm/preferences/ < wm-preferences.ini

# 1. Restaura as configurações gerais de extensões primeiro
dconf load /org/gnome/shell/extensions/ < all-extensions-settings.ini

# 2. Restaura o Pop Shell isolado por cima (garante a prioridade dos teus atalhos)
dconf load /org/gnome/shell/extensions/pop-shell/ < pop-shell.ini

dconf load /org/gnome/desktop/wm/keybindings/ < gnome-keybindings.ini
dconf load /org/gnome/settings-daemon/plugins/media-keys/ < custom-media-keys.ini
dconf load /org/gnome/nautilus/ < nautilus-preferences.ini

echo "GNOME restaurado com sucesso! (Talvez seja necessário deslogar para aplicar tudo)"
