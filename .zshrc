source ~/.iterm2_shell_integration.bash

pfetch

alias top=bpytop

# Powerline-rs
prompt() {
    PS1="$(powerline-rs --shell zsh $?)"
}
precmd_functions+=(prompt)
