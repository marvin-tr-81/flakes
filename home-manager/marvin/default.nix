{ pkgs, ... }:

{
  imports = [
    ../shared
  ];

  home.username = "marvin";
  home.homeDirectory = "/home/marvin";
}
