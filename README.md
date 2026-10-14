
## Resumo do Sistema

- `OS` - `Fedora Workstation` 
- `Desktop` - `GNOME (Wayland)` 
- `Shell` - `Zsh + Starship prompt` 
- `Terminal` - `Kitty` 
- `Gestor de Configs`- `GNU Stow` 

**Aparência Geral:**
- ` Tema do Sistema : Catppuccin Mocha` 
- ` Fonte do Terminal: Monaspace Neon NF` 

![setup](png/rice.png)
![setup](png/rice1.png)

## Estrutura do Repositório

**Extensões do GNOME:**

- `Pop Shell`
- `Dash to Dock` 
- `Blur my Shell`
- `Just Perfection` 
- `Caffeine`
- `Clipboard Indicator`
- `Top Bar Organizer`  
- `Space Bar`
- `TopHat` 
- `Extension List`
- `RunCat`
- `Logo Menu`
- `Auto Move Windows` 

**Ferramentas de Terminal & CLI**

**Shell & Prompt:**
- `zsh` configurado com aliases personalizados
- `starship` (prompt rápido e customizável)

**Utilitários:**
- `stow` - gestor de dotfiles via symlinks
- `btop` - monitor de sistema com tema customizado
- `fastfetch` - exibição de informações do sistema
- `zathura` - leitor de PDFs e documentos

---

**Estrutura de arquivos:**

``` 
~/dotfiles/
├── .config/           # Configurações injetadas pelo Stow (btop, gtk, kitty, mpv, etc.)
├── .local/share/      # Ficheiros locais (assets do PhotoGIMP)
├── gnome-rice/        # Scripts de backup e restauro (dconf, extensões)
├── packages/          # Listas de pacotes para instalação (DNF, Flatpak)
├── system-fixes/      # Scripts de sistema (ex: fix de energia USB, systemd)
├── .stow-local-ignore # Regras de exclusão do Stow
├── .zshrc             # Configuração raiz do Zsh
└── install.sh         # Script de instalção
``` 

## Como Instalar

Para clonar o repositório e aplicar todas as configurações e ajustes automaticamente:


**1. Atualizar o sistema e instalar o Git:**

``` bash
sudo dnf update -y
sudo dnf install git -y
``` 

**2. Clonar o repositório para a Home:**
 
``` bash
git clone https://github.com/celedriel/dotfiles.git ~/dotfiles
cd ~/dotfiles
``` 

**3. Dar permissão e executar o Script:**

``` bash
chmod +x install.sh
./install.sh
```
**Aviso:**

Este repositório é mantido estritamente para meu uso pessoal. Todas as configurações, scripts e aliases incluídos foram desenhados e otimizados especificamente para o meu fluxo de trabalho. Embora o código esteja disponível para consulta ou como base, não recomendo a instalação direta num ambiente diferente sem revisar e adaptar os ficheiros previamente.


![setup](png/rice2.png)
