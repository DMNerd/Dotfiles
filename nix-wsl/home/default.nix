{...}: {
  home = {
    username = "dmnerd";
    homeDirectory = "/home/dmnerd";

    stateVersion = "24.05";
  };
  programs.nix-index = {
    enable = true;
    enableZshIntegration = true;
  };

  programs.home-manager.enable = true;

  imports = [
    ../../dots/zsh
    ../../dots/starship
  ];
}
