#!/bin/sh

#!/bin/sh

ZPACMAN=~/.zpacman

GREEN='\033[0;32m'
RESET='\033[0m'

if ! [ -d "$ZSH/custom/themes/powerlevel10k" ]; then
	echo -e "${GREEN}install powerlevel10k theme${RESET}"
	git clone --depth=1 https://github.com/romkatv/powerlevel10k.git $ZSH/custom/themes/powerlevel10k
fi

read -p "Overwrite ~/.zshrc? [Y/n] " answer
if [ "$answer" != "N" ] && [ "$answer" != "n" ]; then
	cp $ZPACMAN/.zshrc ~/.zshrc
else
	echo 'source $ZSH/custom/themes/powerlevel10k/powerlevel10k.zsh-theme' >> ~/.zshrc
fi

zpacman reload
