#!/bin/bash

echo "Atualizando listas de pacotes..."

# Atualiza Flatpaks
flatpak list --app --columns=application > ~/dotfiles/packages/pacotes-flatpak.txt
echo "Lista Flatpak atualizada."

# Atualiza pacotes DNF (apenas instalados pelo usuario)
dnf repoquery --userinstalled --queryformat "%{name}" > ~/dotfiles/packages/pacotes-dnf.txt
echo "Lista DNF atualizada."

echo "Tudo pronto. Listas atualizadas para o commit."

