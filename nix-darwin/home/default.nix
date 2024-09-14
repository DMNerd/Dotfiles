{...}: {
  home = {
    username = "dmnerd";
    homeDirectory = "/Users/dmnerd";

    stateVersion = "24.05";
  };

  home.file."/Users/dmnerd/.config/sketchybar" = {
        source = ../../dots/sketchybar;
        recursive = true;
  };
  fonts.fontconfig.enable = true;

  programs.home-manager.enable = true;

  imports = [
    ../../dots/zsh
    ../../dots/starship
  ];
}
