source ~/.iterm2_shell_integration.zsh

pfetch

alias top=bpytop

# Powerline-rs
prompt() {
    PS1="$(powerline-rs --shell zsh $?)"
}
precmd_functions+=(prompt)
