{ pkgs, ... }:

{
  imports = [
    ./configs
  ];

  home.username = "root";
  home.homeDirectory = "/root";
}
