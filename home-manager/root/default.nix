{ pkgs, ... }:

{
  imports = [
    ../shared
  ];

  home.username = "root";
  home.homeDirectory = "/root";
}
