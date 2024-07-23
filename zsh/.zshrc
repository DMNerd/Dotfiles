if type brew &>/dev/null
then
  FPATH="$(brew --prefix)/share/zsh/site-functions:${FPATH}"

  autoload -Uz compinit
  compinit
fi

HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt appendhistory
setopt autocd

eval "$(starship init zsh)"

macchina

alias ls=eza --icons=always
alias top=btop
eval $(thefuck --alias)
