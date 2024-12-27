# my-linux-config: black-endeavourOS

## Filosofia:
- Poder dos customizáveis. Simplicidade dos pré-prontos.
- Preferir open-source, mas não renegar software proprietário.
- Batteries included. Básico que funciona.
- Rolling release mais estável possível
- Harmonia entre terminal e interfaces.
- Aplicações maduras, evitar lançamentos novos. 
- Sistema operacional deve solucionar problemas, e não ser um.

## Pontos Principais:
- EndeavourOS + KDE plasma
- Kernel LTS
- Dark mode + orange details

## Comandos

### Atualizar sistema:
```
su # opcional
```
```
sudo pacman -Syu
```

### Blackarch:
```
# enable multilib

curl -O https://blackarch.org/strap.sh

echo bbf0a0b838aed0ec05fff2d375dd17591cbdf8aa strap.sh | sha1sum -c

chmod +x strap.sh

sudo ./strap.sh

```

### yayScript:

### Extensões do VScode:

### Firefox extensions and settings:
- Extensões: **extensionsFirefox.txt**
    - Notion-enhancer: neutral theme
- Theme: Matte Black (Orange) by Elijah Lopez
- Toolbar: no "Flexible Space" and "Save to Pocket" + "Developer" tool added

### KDE Theme:
- Global theme: Nothing theme (appearance settings, desktop and windows layout)
- main color: orange
- icons: dracula
- splash screen = null
- panels (lower: autohide + central + 40) and (up: autohide, only orange icons (filtrar))
- sddm monochrome kde by patrik

### ZSH:
- zsh-syntax-highlighting
- powelevel10k





