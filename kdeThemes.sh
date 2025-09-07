#!/bin/bash
# Script para aplicar todos os temas KDE no Arch Linux
# Requer: KDE Plasma instalado e temas já presentes no sistema

apply_theme() {
    local theme_name="$1"
    if [ "$theme_name" != "Nothing" ]; then
        echo "Aplicando tema global: $theme_name"
        lookandfeeltool -a "$theme_name"
    fi
}

apply_icons() {
    local icon_theme="$1"
    if [ "$icon_theme" != "Nothing" ]; then
        echo "Aplicando tema de ícones: $icon_theme"
        kwriteconfig5 --file kdeglobals --group Icons --key Theme "$icon_theme"
    fi
}

apply_cursor() {
    local cursor_theme="$1"
    if [ "$cursor_theme" != "Nothing" ]; then
        echo "Aplicando tema de cursor: $cursor_theme"
        kwriteconfig5 --file kdeglobals --group KCursor --key Theme "$cursor_theme"
    fi
}

apply_application_style() {
    local style="$1"
    if [ "$style" != "Nothing" ]; then
        echo "Aplicando estilo de aplicação: $style"
        lookandfeeltool -a "$style"
    fi
}

apply_splashscreen() {
    local splash="$1"
    if [ "$splash" != "Nothing" ]; then
        echo "Aplicando splash screen: $splash"
        kwriteconfig5 --file ksplashrc --group KSplash --key Theme "$splash"
    fi
}

apply_sddm_theme() {
    local sddm_theme="$1"
    if [ "$sddm_theme" != "Nothing" ]; then
        echo "Aplicando tema SDDM: $sddm_theme"
        sudo kwriteconfig5 --file /etc/sddm.conf --group Theme --key Current "$sddm_theme"
    fi
}

# Listas de temas
blackOrangeThemeKDE=(
    "Nothing"             # global theme
    "Breeze"              # Application Style
    "Breeze"              # Plasma Style
    "Nothing"             # Windows Decoration
    "Breeze Warm Orange"  # Icons
    "Dracula-cursors"     # Cursor
    "Overload"            # Splash Screen
    "Terminal-Style Login" # SDDM
)

nothingThemeKDE=("Nothing")              # Global theme
draculaThemeKDE=("Dracula KDE Plasma 6") # Global theme
tokyoNightThemeKDE=("Tokyo Night Plasma") # Global theme

echo "Aplicando Black Orange Theme..."
apply_theme "${blackOrangeThemeKDE[0]}"
apply_application_style "${blackOrangeThemeKDE[1]}"
apply_application_style "${blackOrangeThemeKDE[2]}"
apply_theme "${blackOrangeThemeKDE[3]}"
apply_icons "${blackOrangeThemeKDE[4]}"
apply_cursor "${blackOrangeThemeKDE[5]}"
apply_splashscreen "${blackOrangeThemeKDE[6]}"
apply_sddm_theme "${blackOrangeThemeKDE[7]}"

echo "Aplicando Nothing Theme..."
apply_theme "${nothingThemeKDE[0]}"

echo "Aplicando Dracula Theme..."
apply_theme "${draculaThemeKDE[0]}"

echo "Aplicando Tokyo Night Theme..."
apply_theme "${tokyoNightThemeKDE[0]}"

echo "Todos os temas foram aplicados. Reinicie a sessão do Plasma para ver os efeitos completos."
