#!/bin/bash

echo "=== Iniciando a restauração completa dos dotfiles e do sistema ==="

echo "=== 1. Instalando Pacotes do Sistema (DNF e Flatpak) ==="
if [ -f "packages/pacotes-dnf.txt" ]; then
    echo "A instalar pacotes DNF..."
    sudo dnf install -y $(cat packages/pacotes-dnf.txt)
else
    echo "Aviso: Lista pacotes-dnf.txt não encontrada!"
fi

if [ -f "packages/pacotes-flatpak.txt" ]; then
    echo "A instalar pacotes Flatpak..."
    flatpak install flathub -y $(cat packages/pacotes-flatpak.txt)
else
    echo "Aviso: Lista pacotes-flatpak.txt não encontrada!"
fi

echo "=== 2. Aplicando configurações com GNU Stow ==="
# Aplica todas as configurações da raiz para a Home silenciosamente
stow -t ~ .

echo "=== 3. Restaurando ambiente GNOME ==="
if [ -f "gnome-rice/restore.sh" ]; then
    cd gnome-rice
    ./restore.sh
    cd ..
else
    echo "Aviso: Script de restauro do GNOME não encontrado."
fi

echo "=== 4. Aplicando ajustes de sistema (USB power fix) ==="
if [ -f "system-fixes/restore-system.sh" ]; then
    cd system-fixes
    ./restore-system.sh
    cd ..
else
    echo "Aviso: Script de restauro do sistema não encontrado."
fi

echo "=== Restauração concluída com sucesso! Recomenda-se reiniciar a sessão. ==="
