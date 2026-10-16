{
  inputs,
  ...
}:
{
  imports = [
    ./configs
    # inputs.catppuccin.homeModules.catppuccin
  ];

  # catppuccin.enable = true;

  home.username = "marvin";
  home.homeDirectory = "/home/marvin";
}
