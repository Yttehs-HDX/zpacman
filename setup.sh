#!/bin/sh

ZPACMAN=~/.zpacman

GREEN='\033[0;32m'
RESET='\033[0m'

read -p "Overwrite ~/.zshrc? [Y/n] " answer
if [ "$answer" != "N" ] && [ "$answer" != "n" ]; then
	cp $ZPACMAN/.zshrc ~/.zshrc
fi

$ZPACMAN/bin/zpacman reload
