{
  description = "Nerd`s System Flake";

  nixConfig = {
    substituters = [
      "https://cache.nixos.org"
    ];

    trusted-public-keys = [
      "cache.nixos.org-1:6NCHdD59X431o0gWypbMrAURkbJ16ZPMQFGspcDShjY="
    ];
    extra-substituters = "https://nrdxp.cachix.org https://nix-community.cachix.org";
    extra-trusted-public-keys = "nrdxp.cachix.org-1:Fc5PSqY2Jm1TrWfm88l6cvGWwz3s93c6IOifQWnhNW4= nix-community.cachix.org-1:mB9FSh9qf2dCimDSUo8Zy7bkq5CX+/rkCWyvRCYg3Fs=";
  };

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    flake-utils.url = "github:numtide/flake-utils";
    nix-darwin.url = "github:LnL7/nix-darwin";
    nix-darwin.inputs.nixpkgs.follows = "nixpkgs";
  };

  outputs = inputs @ {
    self,
    nix-darwin,
    nixpkgs,
    flake-utils,
  }: let
    system.configurationRevision = self.rev or self.dirtyRev or null;
  in {
    # Build darwin flake using:
    # $ darwin-rebuild build --flake .#Adams-MacBook-Air
    darwinConfigurations."Adams-MacBook-Air" = nix-darwin.lib.darwinSystem {
      system = system.aarch64-darwin;
      specialArgs = {inherit inputs;};
      modules = [
        ./modules/core.nix
        ./modules/system.nix
        ./modules/packages.nix
        ./modules/homebrew.nix
        ./modules/winman.nix
      ];
    };

    # Expose the package set, including overlays, for convenience.
    darwinPackages = self.darwinConfigurations."Adams-MacBook-Air".pkgs;

    formatter.aarch64-darwin = nixpkgs.legacyPackages.aarch64-darwin.alejandra;
  };
}
