{ pkgs, ... }:
{
  home.pointerCursor = {

    enable = true;

    package = pkgs.bibata-cursors;
    name = "Bibata-Modern-Ice";
    size = 12;

    gtk.enable = true;
    hyprcursor.enable = true;
    x11.enable = true;

  };
}
