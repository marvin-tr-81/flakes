{ pkgs, ... }:

{
  imports = [
    ./helix
    ./cursor.nix
  ];

  home.stateVersion = "26.05";

  programs.home-manager.enable = true;
}
