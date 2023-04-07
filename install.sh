#Check if stow is installed using homebrew
brew list stow || brew install stow

#YABAI and SKHD
stow -t $HOME/.config/yabai -D yabai
stow -t $HOME/.config/yabai -v yabai

stow -t $HOME/.config/skhd -D skhd
stow -t $HOME/.config/skhd -v skhd

#ZSH
brew list pfetch || brew install fastfetch
brew list bpytop || brew install bpytop
brew list lsd || brew install lsd

stow -t $HOME -D zsh
stow -t $HOME -v zsh