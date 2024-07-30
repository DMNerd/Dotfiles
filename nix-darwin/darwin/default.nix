{...}: {
  # import sub modules
  imports = [
    ./modules/m1core.nix
    ./modules/system.nix
    ./modules/packages.nix
    ./modules/homebrew.nix
    ./modules/winman.nix
  ];
}
