#NIX
darwin-rebuild switch --flake ./nix-darwin

#SKHD 
stow -t $HOME/.config/skhd -D skhd
stow -t $HOME/.config/skhd -v skhd

#Raycast
stow -t $HOME/.config/raycast -D raycast
stow -t $HOME/.config/raycast -v raycast

#ZSH
stow -t $HOME -D zsh
stow -t $HOME -v zsh