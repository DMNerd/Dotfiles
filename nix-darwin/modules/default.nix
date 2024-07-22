{ inputs, pkgs, lib, ... }:
{
    environment.shellInit = ''
        ulimit -n 2048
    '';
    # List packages installed in system profile. To search by name, run:
    # $ nix-env -qaP | grep wget

    #Auto upgrade nix package and the daemon service.
    services.nix-daemon.enable = true;
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

    # Necessary for using flakes on this system.
    nix.settings.experimental-features = "nix-command flakes";

    # Used for backwards compatibility, please read the changelog before changing.
    # $ darwin-rebuild changelog
    system.stateVersion = 4;

    # The platform the configuration will be used on.
    nixpkgs.config.allowUnfree = true;
    nixpkgs.config.allowUnfreePredicate = (_: true);
    nixpkgs.hostPlatform = "aarch64-darwin";
}