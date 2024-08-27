{
  description = "marvin's flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";

  };

  outputs = { nixpkgs, ... } @ inputs: {
    
    nixosConfigurations.marvin-framework = nixpkgs.lib.nixosSystem {
    specialArgs = { inherit inputs; };
      modules = [
        ./hosts/marvin-framework/configuration.nix
        ./nixosModules
      ];
    };
  };
}
