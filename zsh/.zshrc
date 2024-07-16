if type brew &>/dev/null
then
  FPATH="$(brew --prefix)/share/zsh/site-functions:${FPATH}"

  autoload -Uz compinit
  compinit
fi

eval "$(starship init zsh)"

fastfetch

alias ls=lsd
alias top=bpytop
eval $(thefuck --alias)