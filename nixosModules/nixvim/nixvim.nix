{ pkgs, inputs, ... }:

{
  imports = [
    inputs.nixvim.nixosModules.nixvim
    ./opts.nix
    ./plugins
  ];


  programs.nixvim = {
    enable = true;

    defaultEditor = true;
  };

}
