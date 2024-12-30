#!/bin/bash

instalationsExtra=(
    "btop"
    "blanket"
    "code" 
    "python-pip"
    "firefox"
    "flatpak"
    "fastfetch"
    "git"
    "konsole"
    "zsh" 
    "ufw"
    "gufw"
    "kdeconnect"
    "spectacle"
    "obsidian"
    "umbrello"
    "mysql-workbench"
    "libreoffice-still"
    "tor"
    "ncspot"
    "vim"
    "virtualbox"
    "kolourpaint"
    "yakuake"
    "yazi"
    "yay"
)

instalationsAur=(
    "github-desktop-bin"
    "spotify"
    "qbittorrent"
    "vesktop"
    "yay ttf-meslo-nerd-font-powerlevel10k"
    "mcomix"
    "teamviewer"
    "brmodelo"
    "heroic-games-launcher-bin"
)

instalationsMultilib=(
    "steam"
    "wine"
)

instalationsBlackArch=(
    "regripper"
)

# Função para instalar pacotes
install_packages() {                         # usar uma única função, que recebe diferentes listas, e muda o echo para cada lista.
    local packages=("$@")                    # estudar diferença do sudo pacman -S para o yay
    for package in "${packages[@]}"; do
        echo "Instalando: $package"
        if pacman -Qi "$package" &>/dev/null; then
            echo "$package já está instalado."
        else
            sudo pacman -S --noconfirm "$package" || yay -S --noconfirm "$package"
        fi
    done
}

# Função para instalar pacotes do AUR
install_aur_packages() {
    local packages=("$@")
    for package in "${packages[@]}"; do
        echo "Instalando do AUR: $package"
        yay -S --noconfirm "$package"
    done
}

# Função para instalar pacotes multilib
install_multilib_packages() {
    local packages=("$@")
    for package in "${packages[@]}"; do
        echo "Instalando multilib: $package"
        sudo pacman -S --noconfirm "$package"
    done
}

# Função para instalar pacotes do BlackArch
install_blackarch_packages() {
    local packages=("$@")
    for package in "${packages[@]}"; do
        echo "Instalando pacotes do BlackArch: $package"
        yay -S --noconfirm "$package"
    done
}

# Menu de opções
echo "Escolha uma opção de instalação:"
echo "1. Instalar pacotes extras (oficiais)"
echo "2. Instalar pacotes do AUR"
echo "3. Instalar pacotes multilib"
echo "4. Instalar pacotes do BlackArch"
echo "5. Instalar tudo (extras, AUR, multilib e BlackArch)"
read -p "Digite o número da sua escolha: " choice

case $choice in
    1)
        install_packages "${instalationsExtra[@]}"
        ;;
    2)
        install_aur_packages "${instalationsAur[@]}"
        ;;
    3)
        install_multilib_packages "${instalationsMultilib[@]}"
        ;;
    4)
        install_blackarch_packages "${instalationsBlackArch[@]}"
        ;;
    5)
        install_packages "${instalationsExtra[@]}"
        install_aur_packages "${instalationsAur[@]}"
        install_multilib_packages "${instalationsMultilib[@]}"
        install_blackarch_packages "${instalationsBlackArch[@]}"
        ;;
    *)
        echo "Opção inválida."
        ;;
esac

echo "Instalação finalizada."
