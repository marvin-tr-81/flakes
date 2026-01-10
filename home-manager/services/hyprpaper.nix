{ pkgs, ... }:
{
  services.hyprpaper = {

    enable = true;

    settings = {
      # preload = [
      # pkgs.fetchurl
      # {
      # url = "https://w.wallhaven.cc/full/vq/wallhaven-vq898p.png";
      # sha256 = "9IxPTlzLUWirsiUtklaHv1XPL2pD1v4Gd1iHwEgxWs0=";
      # }
      # ];
      # wallpaper = [
      # pkgs.fetchurl
      # {
      # url = "https://w.wallhaven.cc/full/vq/wallhaven-vq898p.png";
      # sha256 = "9IxPTlzLUWirsiUtklaHv1XPL2pD1v4Gd1iHwEgxWs0=";
      # }
      # ];

      # preload = [ "~/wallhaven-vq898p.png" ];
      # wallpaper = [ ",~/wallhaven-vq898p.png" ];

      ipc = "on";
      splash = false;

      # This generates the new block-style syntax
      wallpaper = [
        {
          monitor = "";
          path = "~/wallhaven-vq898p.png";
          fit_mode = "cover";
        }
      ];

    };

  };
}
