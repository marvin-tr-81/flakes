{
  inputs,
  ...
}:
{
  imports = [
    inputs.catppuccin.homeModules.catppuccin
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
    ./zsh.nix
  ];

  catppuccin = {
    enable = true;
    autoEnable = true;
  };
  # catppuccin.enable = true;
  # catppuccin.autoEnable = true;

  home.backupFileExtension = "backup";
  home.stateVersion = "26.05";

  programs.home-manager.enable = true;
}
