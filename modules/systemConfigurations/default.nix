# systemConfigurations/default.nix

{ ... }:
{
  imports = [
    ./zramswap.nix
    ./bluetooth.nix
  ];
}
