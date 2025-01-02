#!/bin/bash

instalations=(
    # Extra
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
    # Aur
    "github-desktop-bin"
    "spotify"
    "qbittorrent"
    "vesktop"
    "mcomix"
    "teamviewer"
    "brmodelo"
    "heroic-games-launcher-bin"
    "haguichi"
    # Multilib
    "steam"
    "wine"
)

instalationsBlackArch=(
    blackarch 
    blackarch-anti-forensic 
    blackarch-automation 
    blackarch-backdoor 
    blackarch-binary 
    blackarch-bluetooth 
    blackarch-code-audit 
    blackarch-cracker 
    blackarch-crypto 
    blackarch-database 
    blackarch-debugger 
    blackarch-decompiler 
    blackarch-defensive 
    blackarch-disassembler 
    blackarch-dos 
    blackarch-drone 
    blackarch-exploitation 
    blackarch-fingerprint 
    blackarch-firmware 
    blackarch-forensic 
    blackarch-fuzzer 
    blackarch-hardware 
    blackarch-honeypot 
    blackarch-keylogger 
    blackarch-malware 
    blackarch-misc 
    blackarch-mobile 
    blackarch-networking 
    blackarch-nfc 
    blackarch-packer  
    blackarch-proxy 
    blackarch-recon 
    blackarch-reversing 
    blackarch-scanner 
    blackarch-sniffer 
    blackarch-social 
    blackarch-spoof 
    blackarch-threat-model 
    blackarch-unpacker 
    blackarch-voip . .13
    blackarch-webapp .14
    blackarch-windows 
    blackarch-wireless
)

# Função para instalar pacotes do AUR
install_packages() {
    local packages=("$@")
    for package in "${packages[@]}"; do
        echo "Instalando do AUR: $package"
        yay -S --noconfirm "$package"
    else
        sudo pacman -S --noconfirm yay
}



# Menu de opções
echo "Opções de instalação: (reinstala programas já existentes):"
echo "1. Instalar pacotes personalizados"
echo "2. Instalar pacotes do BlackArch"
read -p "Digite o número da sua escolha: " choice

case $choice in
    1)
        install_packages "${instalations[@]}"
        ;;
    2)
        install_packages "${instalationsBlackArch[@]}"
        ;;
    *)
        echo "Opção inválida."
        ;;
esac

echo "Instalação finalizada."
