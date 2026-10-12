#!/bin/bash

echo "=== Iniciando a restauração completa dos dotfiles e do sistema ==="

# 1. Verificar e instalar dependências básicas (Stow)
if ! command -v stow &> /dev/null; then
    echo "A instalar o GNU Stow..."
    sudo dnf install stow -y
fi

echo "=== Aplicando configurações de utilizador com GNU Stow ==="
# Aplica todas as configurações da raiz para a Home silenciosamente
stow -t ~ .

echo "=== Restaurando ambiente GNOME ==="
if [ -f "gnome-rice/restore.sh" ]; then
    cd gnome-rice
    ./restore.sh
    cd ..
else
    echo "Aviso: Script de restauro do GNOME não encontrado."
fi

echo "=== Aplicando ajustes de sistema (USB power fix) ==="
if [ -f "system-fixes/restore-system.sh" ]; then
    cd system-fixes
    ./restore-system.sh
    cd ..
else
    echo "Aviso: Script de restauro do sistema não encontrado."
fi

echo "=== Restauração concluída com sucesso! Recomenda-se reiniciar a sessão. ==="
