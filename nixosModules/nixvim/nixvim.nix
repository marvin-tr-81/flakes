{
  imports = [
    ./opts.nix
    ./plugins
  ];


  programs.nixvim = {
    enable = true;

    defaultEditor = true;
  };

}
