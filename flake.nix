{
  description = "marvin's flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    nixos-hardware = {
      url = "github:NixOS/nixos-hardware";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs =
    {
      self,
      nixpkgs,
      home-manager,
      nixos-hardware,
    }@inputs:
    {
      nixosConfigurations = {

        marvin-framework = nixpkgs.lib.nixosSystem {
          system = "x86_64-linux";
          modules = [
            ./hosts/marvin-framework/configuration.nix
            ./modules

            nixos-hardware.nixosModules.framework-11th-gen-intel

            home-manager.nixosModules.home-manager
            {
              home-manager.useGlobalPkgs = true;
              home-manager.useUserPackages = true;
              home-manager.extraSpecialArgs = { inherit inputs; };

              home-manager.users.marvin = import ./home-manager/marvin.nix;
              home-manager.users.root = import ./home-manager/root.nix;
            }
          ];
        };

        marvin-thinkpad = nixpkgs.lib.nixosSystem {
          system = "x86_64-linux";
          modules = [
            ./hosts/marvin-thinkpad/configuration.nix
            ./modules

            nixos-hardware.nixosModules.lenovo-thinkpad-x1-13th-gen

            home-manager.nixosModules.home-manager
            {
              home-manager.useGlobalPkgs = true;
              home-manager.useUserPackages = true;
              home-manager.extraSpecialArgs = { inherit inputs; };

              home-manager.users.marvin = import ./home-manager/marvin.nix;
              home-manager.users.root = import ./home-manager/root.nix;
            }
          ];
        };

      };
    };
}
