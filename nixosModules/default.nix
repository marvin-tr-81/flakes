{ ... }:

{
  imports = [
    ./stylix.nix
    ./users.nix
    ./hyprland.nix
    ./guiapps.nix
    ./cliapps.nix
    ./systemapps.nix
    ./home-manager.nix
    ./nixvim/nixvim.nix
    ./systemConfigurations
  ];
}
