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
    nixos-wsl.url = "github:nix-community/NixOS-WSL/main";
    nixos-wsl.inputs.nixpkgs.follows = "nixpkgs";
    home-manager.url = "github:nix-community/home-manager";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";
  };

  outputs = inputs @ {
    self,
    nix-darwin,
    nixos-wsl,
    nixpkgs,
    home-manager,
  }: {
    darwinConfigurations."Adams-MacBook-Air" = nix-darwin.lib.darwinSystem {
      system = "aarch64-darwin";
      modules = [
        ./nix-darwin

        home-manager.darwinModules.home-manager
        {
          home-manager = {
            useGlobalPkgs = true;
            useUserPackages = true;
            extraSpecialArgs = {inherit inputs;};
            users.dmnerd.imports = [./nix-darwin/home];
            backupFileExtension = "bak";
          };
        }
      ];
    };
    nixosConfigurations."WSL" = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";
      modules = [
        ./nix-wsl

        nixos-wsl.nixosModules.default
        {
          system.stateVersion = "24.05";
          wsl.enable = true;
        }
        home-manager.nixosModules.home-manager
        {
          home-manager = {
            useGlobalPkgs = true;
            useUserPackages = true;
            extraSpecialArgs = {inherit inputs;};
            users.dmnerd.imports = [./nix-wsl/home];
            backupFileExtension = "bak";
          };
        }
      ];
    };
    formatter.aarch64-darwin = nixpkgs.legacyPackages.aarch64-darwin.alejandra;
    formatter.x86_64-linux = nixpkgs.legacyPackages.x86_64-linux.alejandra;
  };
}
