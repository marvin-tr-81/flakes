{ self, inputs, ... }:

{

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
