#
# ~/.zshrc
#

# zpacman
export ZPACMAN="$HOME/.zpacman"
source $ZPACMAN/zpacman.sh

# oh my zsh
export ZSH="$HOME/.oh-my-zsh"
source $ZSH/oh-my-zsh.sh

# custom settings
source ~/.bashrc

# auto update plugins
export UPDATE_ZSH_DAYS=1
ZSH_CUSTOM_AUTOUPDATE_NUM_WORKERS=8
ZSH_CUSTOM_AUTOUPDATE_QUIET=true

# p10k theme
source $ZSH/custom/themes/powerlevel10k/powerlevel10k.zsh-theme
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
