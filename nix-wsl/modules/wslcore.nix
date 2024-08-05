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
    };
    configureBuildUsers = true;
    channel.enable = false;
    gc = {
      automatic = true;
      interval.Day = 7;
      options = "--delete-older-than 7d";
    };
  };
  system.stateVersion = "24.05";

  nixpkgs = {
    hostPlatform = system;
    config.allowUnfree = true;
  };

  users.users."dmnerd" = {
    home = "/home/dmnerd";
    description = "dmnerd";
    shell = pkgs.zsh;
    extraGroups = ["wheel"];
  };
}
