#!/bin/zsh

echo "Fazendo backup das configurações do GNOME..."
cd ~/dotfiles/gnome-rice/

# Interface e Janelas
dconf dump /org/gnome/desktop/interface/ > interface.ini
dconf dump /org/gnome/desktop/wm/preferences/ > wm-preferences.ini

# Extensões (Isso já engloba Pop Shell, Tilingshell e outras)
dconf dump /org/gnome/shell/extensions/ > all-extensions-settings.ini
gnome-extensions list --enabled > enabled-extensions-list.txt

# Atalhos e Teclado
dconf dump /org/gnome/desktop/wm/keybindings/ > gnome-keybindings.ini
dconf dump /org/gnome/settings-daemon/plugins/media-keys/ > custom-media-keys.ini

# Nautilus
dconf dump /org/gnome/nautilus/ > nautilus-preferences.ini

echo "Backup concluído com sucesso!"