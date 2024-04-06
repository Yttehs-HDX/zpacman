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

# zsh-autoupdate
export UPDATE_ZSH_DAYS=1
ZSH_CUSTOM_AUTOUPDATE_NUM_WORKERS=8
ZSH_CUSTOM_AUTOUPDATE_QUIET=true

# zsh-syntax-highlighting
ZSH_HIGHLIGHT_STYLES[unknown-token]=fg=red
ZSH_HIGHLIGHT_STYLES[suffix-alias]=fg=cyan,underline
ZSH_HIGHLIGHT_STYLES[precommand]=fg=cyan,underline
ZSH_HIGHLIGHT_STYLES[path]=fg=green
ZSH_HIGHLIGHT_STYLES[arg0]=fg=cyan

# p10k theme
source $ZSH/custom/themes/powerlevel10k/powerlevel10k.zsh-theme
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
