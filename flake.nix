{
  description = "marvin's flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";

    catppuccin.url = "github:catppuccin/nix";

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
      catppuccin,
    }@inputs:
    {
      nixosConfigurations = {

        marvin-thinkpad = nixpkgs.lib.nixosSystem {
          system = "x86_64-linux";
          modules = [
            ./hosts/marvin-thinkpad/configuration.nix
            ./modules

            catppuccin.nixosModules.catppuccin
            home-manager.nixosModules.home-manager

            # nixos-hardware.nixosModules.lenovo-thinkpad-x1-13th-gen

            home-manager.nixosModules.home-manager
            {
              home-manager.useGlobalPkgs = true;
              home-manager.useUserPackages = true;
              home-manager.extraSpecialArgs = { inherit inputs; };

              home-manager.users.marvin = {
                imports = [
                  ./home-manager/marvin.nix
                  catppuccin.homeModules.catppuccin
                ];
                catppuccin.enable = true;
              };

              home-manager.users.root = import ./home-manager/root.nix;
            }
          ];
        };

      };
    };
}
