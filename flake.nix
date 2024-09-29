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

  outputs = { nixpkgs, home-manager, stylix, ... } @ inputs: {
    
    nixosConfigurations.marvin-framework = nixpkgs.lib.nixosSystem {
      specialArgs = { inherit inputs ; };
      modules = [
        ./hosts/marvin-framework/configuration.nix
        ./nixosModules
        inputs.nixos-hardware.nixosModules.framework-11th-gen-intel
        home-manager.nixosModules.home-manager
        stylix.nixosModules.stylix
        {
          home-manager.useGlobalPkgs = true;
          home-manager.useUserPackages = true;
          home-manager.backupFileExtension = "backup";
          home-manager.users.marvin.imports = [
            ./home-manager/home.nix
          ];
        }
      ];
    };

  };
}
