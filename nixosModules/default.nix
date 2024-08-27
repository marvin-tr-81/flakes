{ ... }: {
  imports = [
    ./users.nix
    ./hyprland.nix
    ./guiapps.nix
    ./cliapps.nix
    ./systemConfigurations
  ];
}
