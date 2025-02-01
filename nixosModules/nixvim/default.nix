{ self, inputs, ... }:

{
  imports = [
    inputs.nixvim.nixosModules.nixvim
  ];

  programs.nixvim = {

    enable = true;

    imports = [
      ./core
      ./plugins
    ];

    #colorschemes.gruvbox.enable = true;
    defaultEditor = true;
  };

}
