{pkgs, ...}: {
  homebrew = {
    enable = true;

    onActivation = {
      autoUpdate = false;
      cleanup = "zap";
    };

    masApps = {
      Dropover = 1355679052;
      GarageBand = 682658836;
      Keka = 470158793;
      OTPAuth = 1471867429;
      Tailscale = 1475387142; # App Store URL id
      Theine = 955848755;
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
    ];

    # `brew install --cask`
    # TODO Feel free to add your favorite apps here.
    casks = [
      "warp"
      "vmware-fusion"

      "arc"
      "floorp"
      "spotify"
      "cryptomator"
      "kekaexternalhelper"

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
