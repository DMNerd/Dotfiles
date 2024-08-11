{
  inputs,
  pkgs,
  lib,
  ...
}: {
  # Necessary for using flakes on this system.
  nix = {
    package = pkgs.nix;
    settings = {
      "extra-experimental-features" = ["nix-command" "flakes"];
      "trusted-users" = ["dmnerd"];
    };

    channel.enable = false;
  };
  system.stateVersion = "24.05";

  nixpkgs = {
    hostPlatform = "x86_64-linux";
    config.allowUnfree = true;
  };
  users.groups.dmnerd = {};
  users.users."dmnerd" = {
    isSystemUser = true;
    group = "dmnerd";
    home = "/home/dmnerd";
    description = "dmnerd";
    shell = pkgs.zsh;
    extraGroups = ["wheel"];
  };
}
