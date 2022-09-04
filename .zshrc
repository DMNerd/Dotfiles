source ~/.zsh/zsh-autocomplete/zsh-autocomplete.plugin.zsh
fpath+="$HOME/.zsh/zen"

pfetch

alias top=bpytop

autoload -U promptinit; promptinit
prompt zen
