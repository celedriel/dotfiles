#!/bin/zsh

echo "Fazendo backup das configurações do GNOME..."

cd ~/dotfiles/gnome-rice/

dconf dump /org/gnome/shell/extensions/ > extensions.ini
dconf dump /org/gnome/desktop/interface/ > interface.ini
dconf dump /org/gnome/desktop/wm/preferences/ > wm-preferences.ini

echo "Backup concluído com sucesso!"