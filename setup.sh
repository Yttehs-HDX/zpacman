#!/bin/sh

ZPACMAN=~/.zpacman

GREEN='\033[0;32m'
RESET='\033[0m'

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo -e "${GREEN}Installing Powerlevel10k...${RESET}"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/.oh-my-zsh/custom/themes/powerlevel10k
echo -e "${GREEN}Done${RESET}"

read -p "Overwrite ~/.zshrc? [Y/n] " answer
if [ "$answer" != "N" ] && [ "$answer" != "n" ]; then
	cp $ZPACMAN/.zshrc ~/.zshrc
fi

$ZPACMAN/bin/zpacman reload
