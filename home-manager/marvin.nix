{
  inputs,
  ...
}:
{
  imports = [
    ./configs
    ./scripts
  ];

  # catppuccin.enable = true;

  home.username = "marvin";
  home.homeDirectory = "/home/marvin";
}
