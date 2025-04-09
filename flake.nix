{
  description = "marvin's flake";

  inputs = {

    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    nixos-hardware.url = "github:NixOS/nixos-hardware/master";

    nixvim = {
      url = "github:nix-community/nixvim";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    stylix = {
      url = "github:danth/stylix";
      inputs.nixpkgs.follows = "nixpkgs";
    };

  };

  outputs =
    {
      nixpkgs,
      home-manager,
      stylix,
      ...
    }@inputs:
    {
      nixosConfigurations.marvin-framework = nixpkgs.lib.nixosSystem {
        specialArgs = { inherit inputs; };
        system = "x86_64-linux";
        modules =
          with inputs;
          [
            home-manager.nixosModules.home-manager
            nixos-hardware.nixosModules.framework-11th-gen-intel
            nixvim.nixosModules.nixvim
            stylix.nixosModules.stylix
          ]
          ++ [
            ./hosts/marvin-framework/configuration.nix
            ./modules
            ./home-manager
          ];
      };
    };
}
