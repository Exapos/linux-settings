#!/bin/bash

sudo apt update && sudo apt install git && sudo apt install curl && sudo apt install zsh
chsh -s /bin/zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/none9632/zsh-sudo.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/sudo
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
git clone https://github.com/agkozak/zsh-z ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-z
git clone https://github.com/ohmyzsh/ohmyzsh.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/web-search
git clone https://github.com/ohmyzsh/ohmyzsh.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/jsontools
git clone https://github.com/djui/alias-tips.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/alias-tips
sed -i 's/plugins=(git)/plugins=(git zsh-autosuggestions zsh-syntax-highlighting sudo web-search jsontools alias-tips)/' ~/.zshrc
sed -i 's/ZSH_THEME="robbyrussell"/ZSH_THEME="powerlevel10k\/powerlevel10k"/' ~/.zshrc
yes | source ~/.zshrc

echo "Instalace a konfigurace dokončena. Prosím, restartujte svůj shell pro zobrazení změn."
echo "Prosím, restartujte svůj systém nebo se odhlaste a znovu přihlaste, aby se změny projevily."
