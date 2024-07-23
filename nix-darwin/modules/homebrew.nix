{pkgs, ...}: {
  homebrew = {
    enable = true;
    onActivation = {
      autoUpdate = true;
      upgrade = true;
      cleanup = "zap";
    };
    brewPrefix = "/opt/homebrew/bin";
    caskArgs = {
      no_quarantine = true;
    };
    masApps = {
      Dropover = 1355679052;
      UTM = 1538878817;
      GarageBand = 682658836;
      Keka = 470158793;
      OTPAuth = 1471867429;
      Tailscale = 1475387142; # App Store URL id
      Theine = 955848755;
    };

    taps = [
      "homebrew/services"
      "macos-fuse-t/homebrew-cask"
    ];
    # `brew install`
    # TODO Feel free to add your favorite apps here.
    brews = [
      "bpytop"
      "curl" # no not install curl via nixpkgs, it's not working well on macOS!
      "starship"
      "stow"
      "thefuck"
      "wget" # download tool
    ];
    # `brew install --cask`
    # TODO Feel free to add your favorite apps here.
    casks = [
      "arc"
      "cryptomator"
      "floorp"
      "font-sf-mono"
      "font-sf-pro"
      "fuse-t"
      "fuse-t-sshfs"
      "github"
      "iina"
      "imageoptim"
      "jellyfin-media-player"
      "kekaexternalhelper"
      "monitorcontrol"
      "raycast"
      "sf-symbols"
      "spotify"
      "termius"
      "tuxera-ntfs"
      "visual-studio-code"
      "vmware-fusion"
      "warp"
      "whisky"
      "zed"
    ];
  };
}
