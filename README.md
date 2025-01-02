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

--- 

### Blackarch:
```
# enable multilib

curl -O https://blackarch.org/strap.sh

echo bbf0a0b838aed0ec05fff2d375dd17591cbdf8aa strap.sh | sha1sum -c

chmod +x strap.sh

sudo ./strap.sh

```

### Bluetooth:
```
sudo systemctl start bluetooth

sudo systemctl enable bluetooth
```

---

### yayScript:
```
chmod +x yayScript.sh
```
```
./yayScript.sh
```
#### yayScript: customs details
- Check vesktop icon + add DiscordNight.theme.css
- Enable yakuake + terminal theme + autostart  + 90x90 + nothin theme (konsole too) + don't show the tittle bar and the tab bar + **/bin/bash** -> **/bin/zsh**


---

### VScode Extensions:
```
extensionsCode.txt
```
#### Vscode Extensions: custom details
- Run in Terminal
- Save all Files Before Run

---

### Firefox extensions and settings:
```
Extensões: **extensionsFirefox.txt**
```

#### Firefox extensions and settings: custom details
- Notion-enhancer: neutral theme
- Unhook: no shorts, comments, mixes and redirect to subscriptions (hide home feed), Dark mode
- Theme: Matte Black (Orange) by Elijah Lopez
- Toolbar: no "Flexible Space" and "Save to Pocket" + "Developer" tool added
- Enhancer for YouTube™: Orange dark theme


---

### KDE Theme:
- Favorite: 
- Global theme: Nothing theme (appearance settings, desktop and windows layout)
- Breeze main color: orange
- icons: breeze warm orange
- splash screen = null
- panels (lower: autohide + central + 40) and (up: autohide, only orange icons (filtrar))
- sddm monochrome kde by patrik
- Wallpapers: homescreen/lockscreen folder. slideshow mode. 15s.
- Account icon: bat.jpg

### ZSH:
```
# ohmyzsh

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```
```
# powerlevel10k

git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
```

```
# zsh-autosuggestions

git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

```

```
# zsh-syntax-highlighting

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

```

```
# inside ~/.zshrc
# nano ~/.zshrc

ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=( 
    # other plugins...
    zsh-autosuggestions
    zsh-syntax-highlighting
)
```


```

```

### Extra:
- Whatsapp web bug deleting letter that starts with accent
```
GTK_IM_MODULE=xim # on /etc/environment 
```

### Fontes:
https://www.youtube.com/watch?v=DmpMgTL6R9A&t=18s
