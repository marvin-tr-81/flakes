{

  programs.nixvim =

    {

      enable = true;

      colorschemes.catppuccin.enable = true;

      imports = [
        ./core
        ./plugins
      ];

      defaultEditor = true;
    };

}
