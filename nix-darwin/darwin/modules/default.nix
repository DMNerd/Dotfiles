{...}: {
  # import sub modules
  imports = [
    ./core.nix
    ./system.nix
    ./packages.nix
    ./homebrew.nix
    ./winman.nix
  ];
}
