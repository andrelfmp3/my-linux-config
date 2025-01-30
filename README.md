# my-linux-config

- Blackarch over arch linux
- Instalation script + custom details

## Guide from installing from scrach:

### Initial update:

```
sudo pacman -Syu
```

---

### Enable Multilib

```
# on /etc/pacman.conf

[multilib]
Include = /etc/pacman.d/mirrorlist
```

--- 

### Enable Blackarch:
```
# enable multilib

curl -O https://blackarch.org/strap.sh

echo bbf0a0b838aed0ec05fff2d375dd17591cbdf8aa strap.sh | sha1sum -c

chmod +x strap.sh

sudo ./strap.sh

```
---

### Enable Bluetooth:
```
sudo systemctl start bluetooth

sudo systemctl enable bluetooth
```

---

### yayScript:
```
chmod +x BlackArch+yayScript.sh

./BlackArch+yayScript.sh
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
Extensions: **extensionsFirefox.txt**
```

#### Firefox extensions and settings: custom details
- Notion-enhancer: neutral theme
- Unhook: no shorts, comments, mixes and redirect to subscriptions (hide home feed), Dark mode
- Theme: Matte Black (Orange) by Elijah Lopez
- Toolbar: no "Flexible Space" and "Save to Pocket" + "Developer" tool added
- Enhancer for YouTube™: Orange dark theme


---

### KDE Theme:
- Global theme: Nothing theme (appearance settings, desktop and windows layout)
- Breeze main color: orange
- icons: breeze warm orange
- splash screen = null
- panels (lower: autohide + central + 40) and (up: autohide, only orange icons)
- sddm monochrome kde by patrik
- Wallpapers: homescreen/lockscreen folder. slideshow mode. 15s.

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

### Extra:
- Whatsapp web bug deleting letter that starts with accent
```
GTK_IM_MODULE=xim # on /etc/environment 
```

