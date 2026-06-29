{ pkgs, ... }:

{
  imports = [
    ./configs
  ];

  home.username = "marvin";
  home.homeDirectory = "/home/marvin";
}
