{ pkgs, ... }: {
    homebrew = {
    enable = true;

    onActivation = {
      autoUpdate = false;
      cleanup = "zap";
    };

    taps = [
      "homebrew/services"
      "koekeishiya/formulae"
      "FelixKratz/formulae"
    ];

    # `brew install`
    # TODO Feel free to add your favorite apps here.
    brews = [
      "wget" # download tool
      "curl" # no not install curl via nixpkgs, it's not working well on macOS!
      "stow"
      "starship"
      "thefuck"
      "bpytop"
      "yabai"
      "skhd"
      "tailscale"
    ];

    # `brew install --cask`
    # TODO Feel free to add your favorite apps here.
    casks = [
      "warp"

      "arc"
      "floorp"
      "spotify"

      "visual-studio-code"
      "zed"
      "github"

      "iina" 
      "raycast" 

      "tuxera-ntfs"

      "sf-symbols"
      "font-sf-pro"
    ];
  };
}