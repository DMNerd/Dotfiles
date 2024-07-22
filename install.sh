#NIX
darwin-rebuild switch --flake ./nix-darwin

#Raycast
stow -t $HOME/.config/raycast -D raycast
stow -t $HOME/.config/raycast -v raycast

#ZSH
stow -t $HOME -D zsh
stow -t $HOME -v zsh