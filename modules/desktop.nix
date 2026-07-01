{ pkgs, ... }:

{
  programs.hyprland = {
    enable = true;
    xwayland.enable = true;
  };

  environment.systemPackages = with pkgs; [
    wl-clipboard
    kitty
    hyprpwcenter
    firefox
  ];

  # Force electron apps to use Wayland natively
  environment.sessionVariables = {
    NIXOS_OZONE_WL = "1";
  };

}
