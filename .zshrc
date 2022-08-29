source ~/Git/zsh-autocomplete/zsh-autocomplete.plugin.zsh
source ~/.iterm2_shell_integration.zsh
fpath+="$HOME/.zsh/zen"

pfetch

alias top=bpytop

# Completion menu
autoload -Uz compinit
zstyle ':completion:*' menu select
compinit
_comp_options+=(globdots)

autoload -U promptinit; promptinit
prompt zen
