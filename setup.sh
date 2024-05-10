#!/bin/sh

ZPACMAN=~/.zpacman

GREEN='\033[0;32m'
RESET='\033[0m'

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

read -p "Overwrite ~/.zshrc? [Y/n] " answer
if [ "$answer" != "N" ] && [ "$answer" != "n" ]; then
	cp $ZPACMAN/.zshrc ~/.zshrc
else
	echo "source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme" >> ~/.zshrc
fi

$ZPACMAN/bin/zpacman reload
