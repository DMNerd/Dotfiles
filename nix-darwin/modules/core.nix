{
  inputs,
  pkgs,
  lib,
  system,
  ...
}: {
  # Necessary for using flakes on this system.
  nix = {
    package = pkgs.nix;
    settings = {
      "extra-experimental-features" = ["nix-command" "flakes"];
      "trusted-users" = ["dmnerd"];
      "max-jobs" = "auto";
      "auto-optimise-store" = false;
      "warn-dirty" = false;
    };
    extraOptions = ''
      extra-platforms = x86_64-darwin aarch64-darwin
    '';
    configureBuildUsers = true;
    gc = {
      automatic = true;
      interval.Day = 7;
      options = "--delete-older-than 7d";
    };
  };
  # List packages installed in system profile. To search by name, run:
  # $ nix-env -qaP | grep wget
  #Auto upgrade nix package and the daemon service.
  services.nix-daemon.enable = true;

  # Used for backwards compatibility, please read the changelog before changing.
  # $ darwin-rebuild changelog
  system.stateVersion = 4;
  system.checks.verifyNixPath = false;

  nixpkgs = {
    hostPlatform = system;
    config = {
      allowUnfree = true;
      allowUnfreePredicate = _: true;
    };
  };
}
