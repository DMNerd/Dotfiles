{
  description = "Nerd`s M1 Air System Flake";

  nixConfig = {
    substituters = [
      "https://cache.nixos.org"
    ];

    trusted-public-keys = [
      "cache.nixos.org-1:6NCHdD59X431o0gWypbMrAURkbJ16ZPMQFGspcDShjY="
    ];
  };

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    nix-darwin.url = "github:LnL7/nix-darwin";
    nix-darwin.inputs.nixpkgs.follows = "nixpkgs";
    nix-index-database.url = "github:nix-community/nix-index-database";
    nix-index-database.inputs.nixpkgs.follows = "nixpkgs";
    home-manager.url = "github:nix-community/home-manager";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";
  };

  outputs = inputs @ {
    self,
    nix-darwin,
    nixpkgs,
    home-manager,
    nix-index-database,
  }: let
    systems = [
      "aarch64-darwin"
    ];
    forAllSystems = nixpkgs.lib.genAttrs systems;
  in {
    darwinConfigurations."Adams-MacBook-Air" = nix-darwin.lib.darwinSystem {
      system = "aarch64-darwin";
      modules = [
        ./nix-darwin
        inputs.nix-index-database.darwinModules.nix-index
        home-manager.darwinModules.home-manager
        {
          home-manager = {
            useGlobalPkgs = true;
            useUserPackages = false;
            extraSpecialArgs = {inherit inputs;};
            users.dmnerd.imports = [./nix-darwin/home];
            backupFileExtension = "bak";
          };
        }
      ];
    };
    formatter = forAllSystems (system: nixpkgs.legacyPackages.${system}.alejandra);
  };
}
