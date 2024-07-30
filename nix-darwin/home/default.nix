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
  fonts.fontconfig.enable = true;

  programs.home-manager.enable = true;

  imports = [
    ./dots/zsh.nix
    ./dots/starship.nix
  ];
}
