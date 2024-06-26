#!/bin/bash

ZPACMAN=~/.zpacman

if [ -d $ZPACMAN ]; then
	echo -e "\e[0;33mzpacman is already installed, updating...\e[0m"
	cd $ZPACMAN && git pull
	$ZPACMAN/bin/zpacman reload
else
	git clone	https://github.com/Yttehs-HDX/zpacman.git --depth=1 $ZPACMAN
	echo -e "\e[1;32mzpacman installed successfully\e[0m"
	cd $ZPACMAN && ./setup.sh
fi


