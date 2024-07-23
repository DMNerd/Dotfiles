{
  inputs,
  pkgs,
  lib,
  system,
  ...
}: {
  # Necessary for using flakes on this system.
  nix.settings.experimental-features = "nix-command flakes";
  nix.settings.trusted-users = ["dmnerd"];
  nix.configureBuildUsers = true;
  nix.settings.max-jobs = "auto";
  nix.package = pkgs.nix;
  nix.extraOptions = ''
    extra-platforms = x86_64-darwin aarch64-darwin
  '';
  nix.settings = {
    auto-optimise-store = false;
    warn-dirty = false;
  };
  nix.gc = {
    automatic = true;
    interval.Day = 7;
    options = "--delete-older-than 7d";
  };
  # List packages installed in system profile. To search by name, run:
  # $ nix-env -qaP | grep wget

  #Auto upgrade nix package and the daemon service.
  services.nix-daemon.enable = true;

  # Used for backwards compatibility, please read the changelog before changing.
  # $ darwin-rebuild changelog
  system.stateVersion = 4;

  # The platform the configuration will be used on.
  nixpkgs.config.allowUnfree = true;
  nixpkgs.config.allowUnfreePredicate = _: true;
  nixpkgs.hostPlatform = system;
}