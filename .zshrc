source ~/Git/zsh-autocomplete/zsh-autocomplete.plugin.zsh
source ~/.iterm2_shell_integration.zsh
fpath+="$HOME/.zsh/zen"

pfetch

alias top=bpytop

autoload -U promptinit; promptinit
prompt zen
