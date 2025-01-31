{ pkgs, inputs, ... }:

{
  imports = [
    inputs.nixvim.nixosModules.nixvim
    ./core
    ./plugins
  ];


  programs.nixvim = {
    enable = true;

    #colorschemes.gruvbox.enable = true;
    defaultEditor = true;
  };

}
