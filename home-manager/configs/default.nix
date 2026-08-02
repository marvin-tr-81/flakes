{
  imports = [
    ./syshud.nix
    ./helix.nix
    ./fuzzel.nix
    ./mpv.nix
    ./yazi.nix
    ./zathura.nix
    ./foot.nix
    ./kitty.nix
    ./cursor.nix
    ./tmux.nix
    ./btop.nix
    ./fastfetch.nix
    ./mangohud.nix
    ./lutris.nix
    ./hyprland.nix
  ];

  home.stateVersion = "26.05";

  programs.home-manager.enable = true;
}
