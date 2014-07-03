# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Themes in ~/.oh-my-zsh/themes/
ZSH_THEME="philips"

DISABLE_AUTO_UPDATE="true"
DISABLE_CORRECTION="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
plugins=(git history history-substring-search terminalapp brew nanoc)

source $ZSH/oh-my-zsh.sh

for file in ~/.{exports,aliases,extra}; do
    [ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;