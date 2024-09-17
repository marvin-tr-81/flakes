{
  description = "marvin's flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";

    nixos-hardware.url = "github:NixOS/nixos-hardware/master";

    nixvim = {
      url = "github:nix-community/nixvim";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { nixpkgs, ... } @ inputs: {
    
    nixosConfigurations.marvin-framework = nixpkgs.lib.nixosSystem {
    specialArgs = { inherit inputs; };
      modules = [
        ./hosts/marvin-framework/configuration.nix
        ./nixosModules
        inputs.nixos-hardware.nixosModules.framework-11th-gen-intel
        inputs.nixvim.nixosModules.nixvim
      ];
    };
  };
}
