{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    kitty
    ghostty
    firefox
    zathura
    tor-browser
    sweethome3d.application
  ];
}
