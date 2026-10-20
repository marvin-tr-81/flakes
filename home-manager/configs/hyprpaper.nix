{ pkgs, ... }:

let
  myWallpaper = pkgs.fetchurl {
    # url = "https://w.wallhaven.cc/full/vq/wallhaven-vq898p.png";
    # hash = "sha256-9IxPTlzLUWirsiUtklaHv1XPL2pD1v4Gd1iHwEgxWs0=";
    url = "https://w.wallhaven.cc/full/je/wallhaven-jel1jq.jpg";
    hash = "sha256-svsxJvdqObM3aQZJJJbT3c4oXSYmkxKxcgSfF/fqKPk=";
  };
in
{
  services.hyprpaper = {
    enable = true;
    settings = {
      preload = [
        "${myWallpaper}"
      ];
      splash = false; # Enable rendering of the Hyprland splash over the wallpaper
      wallpaper = [
        {
          monitor = "";
          path = "${myWallpaper}";
        }
      ];
    };
  };
}
