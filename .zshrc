source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
fpath+="$HOME/.zsh/zen"

pfetch

alias top=bpytop
eval $(thefuck --alias)

autoload -U promptinit; promptinit
prompt zen