#Check if stow is installed using homebrew
brew list stow || brew install stow

#YABAI and SKHD
stow -t $HOME/.config/yabai -D yabai
stow -t $HOME/.config/yabai -v yabai

stow -t $HOME/.config/skhd -D skhd
stow -t $HOME/.config/skhd -v skhd

#Terminal
brew list warp || brew install warp

brew tap homebrew/cask-fonts
brew install font-hack-nerd-font

brew list fastfetch || brew install fastfetch
brew list bpytop || brew install bpytop
brew list lsd || brew install lsd
brew list thefuck || brew install thefuck

stow -t $HOME -D zsh
stow -t $HOME -v zsh

#Text Editor
brew list cursor || brew install cursor

#Raycast

brew list raycast || brew install raycast

if  test -d $HOME/.config/raycast; then
    rm -rf $HOME/.config/raycast
fi

mkdir $HOME/.config/raycast

stow -t $HOME/.config/terminator -D raycast
stow -t $HOME/.config/terminator -v raycast