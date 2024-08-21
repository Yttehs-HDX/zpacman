#!/bin/bash

ZPACMAN=~/.zpacman

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

read -rp "Overwrite ~/.zshrc? [Y/n] " answer
if [ "$answer" != "N" ] && [ "$answer" != "n" ]; then
	cp $ZPACMAN/.zshrc ~/.zshrc
else
	echo "source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme" >> ~/.zshrc
fi

$ZPACMAN/bin/zpacman reload