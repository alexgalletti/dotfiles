ZSH=$HOME/.oh-my-zsh;
ZSH_THEME="philips";
DISABLE_AUTO_UPDATE="true";
DISABLE_CORRECTION="true";
export HOMEBREW_CASK_OPTS="--appdir=/Applications"
plugins=(git history history-substring-search terminalapp brew nanoc);

[ -f "$ZSH/oh-my-zsh.sh" ] && source $ZSH/oh-my-zsh.sh;

for file in ~/.{exports,aliases,extra}; do
    [ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;
