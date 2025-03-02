{
  home-manager = {

    useGlobalPkgs = true;

    useUserPackages = true;

    backupFileExtension = "backup";

    users.marvin.imports = [
      ./home.nix
      ./stylix.nix
      ./ghostty
      ./btop
      ./hyprland
      ./zsh
      ./starship.nix
      ./virt-manager.nix
      ./yazi.nix
      # ./rofi-wayland.nix
      ./fuzzel.nix
      ./zathura.nix
      ./tmux.nix
      ./dunst.nix

    ];
  };
}
