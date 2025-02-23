# !/bin/bash
# Interação com o usuário em PT-BR. Código em inglês.

instalations=(
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
    "blackarch-anti-forensic"
    "blackarch-automation"
    "blackarch-backdoor"
    "blackarch-binary"
    "blackarch-bluetooth"
    "blackarch-code-audit"
    "blackarch-cracker"
    "blackarch-crypto"
    "blackarch-database"
    "blackarch-debugger"
    "blackarch-decompiler"
    "blackarch-defensive"
    "blackarch-disassembler"
    "blackarch-dos"
    "blackarch-drone"
    "blackarch-exploitation"
    "blackarch-fingerprint"
    "blackarch-firmware"
    "blackarch-forensic"
    "blackarch-fuzzer"
    "blackarch-hardware"
    "blackarch-honeypot"
    "blackarch-keylogger"
    "blackarch-malware"
    "blackarch-misc"
    "blackarch-mobile"
    "blackarch-networking"
    "blackarch-nfc"
    "blackarch-packer"
    "blackarch-proxy"
    "blackarch-recon"
    "blackarch-reversing"
    "blackarch-scanner"
    "blackarch-sniffer"
    "blackarch-social"
    "blackarch-spoof"
    "blackarch-threat-model"
    "blackarch-unpacker"
    "blackarch-voip"
    "blackarch-webapp"
    "blackarch-windows"
    "blackarch-wireless"
)

# Função para instalar pacotes
install_packages() {
    local packages=("$@")

    # Verifica se o yay está instalado. Se não, instala. (Endeavour tem yay pré-instalado)
    if ! command -v yay &> /dev/null; then
        echo "yay não encontrado. Instalando..."
        sudo pacman -S --noconfirm yay
    fi

    # Instalar pacotes
    for package in "${packages[@]}"; do
        echo "Instalando: $package"
        yay -S --noconfirm "$package"
    done
}

# Função para exibir menu de categorias do BlackArch
blackarch_menu() {
    echo "Categoria de pacotes do BlackArch para instalar:"
    echo "1. Forensics"
    echo "2. Automation"
    echo "3. Crypto"
    echo "4. Networking"
    echo "5. Exploitation"
    echo "6. Malware"
    echo "7. Instalar tudo"
    read -p "Digite o número da categoria escolhida " category_choice

    case $category_choice in
        1)
            install_packages "blackarch-anti-forensic" "blackarch-forensic" "blackarch-fuzzer"
            ;;
        2)
            install_packages "blackarch-automation" "blackarch-cracker" "blackarch-code-audit"
            ;;
        3)
            install_packages "blackarch-crypto" "blackarch-decompiler" "blackarch-reversing"
            ;;
        4)
            install_packages "blackarch-networking" "blackarch-sniffer" "blackarch-proxy"
            ;;
        5)
            install_packages "blackarch-exploitation" "blackarch-recon" "blackarch-scanner"
            ;;
        6)
            install_packages "blackarch-malware" "blackarch-keylogger" "blackarch-honeypot"
            ;;
        7)
            install_packages "${instalationsBlackArch[@]}"
            ;;
        *)
            echo "Opção inválida."
            ;;
    esac
}

# Menu de opções
echo "Opções de instalação: (reinstala programas já existentes)"
echo "1. Instalar pacotes personalizados"
echo "2. Instalar pacotes do BlackArch"
read -p "Digite o número da sua escolha: " choice

case $choice in
    1)
        install_packages "${instalations[@]}"
        ;;
    2)
        blackarch_menu
        ;;
    *)
        echo "Opção inválida."
        ;;
esac

echo "Instalação finalizada."
