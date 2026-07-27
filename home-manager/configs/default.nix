{ pkgs, ... }:

{
  imports = [
    ./syshud
    ./helix
    ./cursor.nix
    ./tmux.nix
    ./btop.nix
    ./fastfetch.nix
    ./mangohud.nix
    ./lutris.nix
  ];

  home.stateVersion = "26.05";

  programs.home-manager.enable = true;
}
