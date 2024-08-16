{...}: {
  home = {
    username = "dmnerd";
    homeDirectory = "/Users/dmnerd";

    stateVersion = "24.05";
  };
  fonts.fontconfig.enable = true;

  programs.home-manager.enable = true;

  imports = [
    ../../dots/zsh
    ../../dots/starship
  ];
}
