{

  programs.nixvim =

    {

      enable = true;

      imports = [
        ./core
        ./plugins
      ];

      defaultEditor = true;
    };

}
