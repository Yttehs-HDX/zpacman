#!/bin/bash

ZPACMAN_PATH="$HOME/.zpacman"
ZSHRC_PATH="$HOME/.zshrc"

if [ -f $ZSHRC_PATH ]; then
	echo 'Backing up current .zshrc file'
	mv $ZSHRC_PATH $ZSHRC_PATH.bak
fi

echo "Creating symbolic link to $ZSHRC_PATH"
ln -sf $ZPACMAN_PATH/zsh_config $ZSHRC_PATH