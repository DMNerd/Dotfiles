#Check if stow is installed using homebrew
brew list stow || brew install stow

#Aerospace
stow -t $HOME/.config/aerospace -D aerospace
stow -t $HOME/.config/aerospace -v aerospace

#Sketchybar
brew tap FelixKratz/formulae
brew list sketchybar || brew install sketchybar

stow -t $HOME/.config/sketchybar -D sketchybar
stow -t $HOME/.config/sketchybar -v sketchybar

#Raycast
brew list raycast || brew install raycast

stow -t $HOME/.config/raycast -D raycast
stow -t $HOME/.config/raycast -v raycast

#Terminal
brew list warp || brew install warp

#Prompt
brew list starship || brew install starship

brew list fastfetch || brew install fastfetch
brew list bpytop || brew install bpytop
brew list lsd || brew install lsd
brew list thefuck || brew install thefuck

stow -t $HOME -D zsh
stow -t $HOME -v zsh

#Code and Text editor
brew list visual-studio-code || brew install visual-studio-code

#Raycast
brew list raycast || brew install raycast

#Tuxera NTFS
brew list tuxera-ntfs || brew install tuxera-ntfs

#Preffered Browser
brew list floorp || brew install floorp
