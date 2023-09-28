# Nastavení a commandy
##### Instalace zsh
```bash
sudo apt update && sudo apt install zsh
chsh
```
V ```chsh``` napíšu po zadaní hesla -> ```/bin/zsh```
A relogneme se
Otevřeme terminál a zmáčkneme (0)
```bash
sudo apt install curl && sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```
##### Autosuggestions
```bash
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
```
##### Syntax highlighting
```bash
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
```
##### Sudo
```bash
git clone https://github.com/none9632/zsh-sudo.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/sudo
```
##### Powerlever10k
```bash
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
```

##### Z
```bash
git clone https://github.com/agkozak/zsh-z ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-z
```

##### Web search
```bash
git clone https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/web-search ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/web-search
```

##### Json-tools
```bash
git clone https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/jsontools ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/jsontools
```
##### Alias
```bash
git clone https://github.com/djui/alias-tips.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/alias-tips
```
##### Nastavení pluginu
```bash
nano ~/.zshrc
```

V souboru ```/.zshrc``` najdu **plugins(git)** a dopíšu tam  ```plugins(git zsh-autosuggestion zsh-syntax-highlighting sudo z websearch jsontools alias-tips)``` a nastavím theme jako ```ZSH_THEME="powerlevel10k/powerlevel10k"```
Zavřu a nastavím si podle preference terminal
