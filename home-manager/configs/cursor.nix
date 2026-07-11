# modules/home/cursor.nix
{ pkgs, ... }:

{
  # =========================================================================
  # BIBATA MODERN CLASSIC CURSOR PROFILE
  # =========================================================================
  home.pointerCursor = {
    enable = true;

    package = pkgs.bibata-cursors;
    name = "Bibata-Modern-Ice";
    size = 24;

    hyprcursor.enable = true;
    gtk.enable = true;
    x11.enable = true;
  };

  # Forces GTK and GNOME-aligned applications to respect the cursor change
  # gtk = {
  #   enable = true;
  #   theme = {
  #     package = pkgs.adw-gtk3;
  #     name = "adw-gtk3-dark";
  #   };
  # };
}
