{ pkgs, ... }:

{
  imports = [
    ./helix
    
  ];

  home.username = "marvin";
  home.homeDirectory = "/home/marvin";
  home.stateVersion = "26.05";

  programs.home-manager.enable = true;
}
