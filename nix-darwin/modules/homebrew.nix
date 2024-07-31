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
      "localsend/localsend"
    ];
    brews = [
      "curl"
      "wget"
      {
        name = "ollama";
        start_service = true;
        restart_service = "changed";
      }
    ];
    casks = [
      "arc"
      "appcleaner"
      "cryptomator"
      "docker"
      "font-sf-mono"
      "font-sf-pro"
      "fuse-t"
      "fuse-t-sshfs"
      "gitkraken"
      "iina"
      "imageoptim"
      "jellyfin-media-player"
      "kekaexternalhelper"
      "localsend"
      "monitorcontrol"
      "raycast"
      "sf-symbols"
      "spotify"
      "superproductivity"
      "termius"
      "tuxera-ntfs"
      "transmission"
      "transmission-remote-gui"
      "vmware-fusion"
      "warp"
      "whisky"
      "zed"
    ];
  };
}
