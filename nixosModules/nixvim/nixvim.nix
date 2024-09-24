{ pkgs, inputs, ... }:

{
  imports = [
    inputs.nixvim.nixosModules.nixvim
    ./opts.nix
    ./plugins
  ];


  programs.nixvim = {
    enable = true;

    #colorschemes.gruvbox.enable = true;
    defaultEditor = true;
  };

}
