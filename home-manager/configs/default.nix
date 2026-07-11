{ pkgs, ... }:

{
  imports = [
    ./helix
    ./cursor.nix
    ./tmux.nix
    ./btop.nix
    ./fastfetch.nix
  ];

  home.stateVersion = "26.05";

  programs.home-manager.enable = true;
}
