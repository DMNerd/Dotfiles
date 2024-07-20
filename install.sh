#NIX
darwin-rebuild switch --flake ./nix-darwin

#YABAI and SKHD 
stow -t $HOME/.config/yabai -D yabai
stow -t $HOME/.config/yabai -v yabai

stow -t $HOME/.config/skhd -D skhd
stow -t $HOME/.config/skhd -v skhd

#Sketchybar
stow -t $HOME/.config/sketchybar -D sketchybar
stow -t $HOME/.config/sketchybar -v sketchybar

#Raycast
stow -t $HOME/.config/raycast -D raycast
stow -t $HOME/.config/raycast -v raycast

#ZSH
stow -t $HOME -D zsh
stow -t $HOME -v zsh