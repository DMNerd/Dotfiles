{...}: {
  home = {
    username = "dmnerd";
    homeDirectory = "/Users/dmnerd";

    stateVersion = "24.05";
  };
  programs.nix-index = {
    enable = true;
    enableZshIntegration = true;
  };

  programs.home-manager.enable = true;
}
