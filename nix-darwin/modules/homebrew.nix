{pkgs, ...}: {
  homebrew = {
    enable = true;
    onActivation = {
      autoUpdate = true;
      upgrade = true;
      cleanup = "zap";
    };
    brewPrefix = "/opt/homebrew/bin";
    extraConfig = ''
      cask_args appdir: "~/Applications"
    '';
    caskArgs = {
      no_quarantine = true;
    };
    masApps = {
      Dropover = 1355679052;
      UTM = 1538878817;
      GarageBand = 682658836;
      Keka = 470158793;
      OTPAuth = 1471867429;
      Tailscale = 1475387142;
      Theine = 955848755;
    };
    taps = [
      "homebrew/services"
      "macos-fuse-t/homebrew-cask"
    ];
    brews = [
      "curl"
      "starship"
      "stow"
      "thefuck"
      "wget"
    ];
    casks = [
      "arc"
      "cryptomator"
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
      "superproductivity"
      "termius"
      "tuxera-ntfs"
      "vmware-fusion"
      "warp"
      "whisky"
      "zed"
    ];
  };
}
