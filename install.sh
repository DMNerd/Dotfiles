#YABAI and SKHD
#Check if stow is installed using homebrew
brew list stow || brew install stow

#Remove existing folder
rm -rf $HOME/.config/yabai
#Recreate it
mkdir $HOME/.config/yabai 
stow -t $HOME/.config/yabai -v yabai

rm -rf $HOME/.config/skhd
mkdir $HOME/.config/skhd
stow -t $HOME/.config/skhd -v skhd

#ZSH
brew list pfetch || brew install pfetch
brew list bpytop || brew install bpytop
brew list lsd || brew install lsd

stow -t $HOME -v zsh