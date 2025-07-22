{

  programs.nixvim =

    {

      enable = true;

      colorschemes.catppuccin = {
        enable = true;
        settings.flavour = "frappe";
      };

      imports = [
        ./core
        ./plugins
      ];

      defaultEditor = true;
    };

}
