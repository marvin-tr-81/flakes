# home.nix
{
  pkgs,
  ...
}:
let
  # Define the overridden package
  catppuccinPackage = pkgs.catppuccin-gtk.override {
    accents = [ "mauve" ];
    size = "compact";
    tweaks = [
      # "black"
      "rimless"
    ];
    variant = "mocha";
  };

  # Dynamically extract the exact directory name created inside /share/themes/
  themeName = builtins.head (
    builtins.attrNames (builtins.readDir "${catppuccinPackage}/share/themes")
  );
in
{
  gtk = {
    enable = true;
    theme = {
      name = themeName;
      package = catppuccinPackage;
    };
  };

  dconf.settings = {
    "org/gnome/desktop/interface" = {
      color-scheme = "prefer-dark";
      gtk-theme = themeName;
    };
  };

  dconf.settings = {
    "org/gnome/desktop/wm/preferences" = {
      button-layout = ":";
    };
  };

  # Declaratively symlink GTK 4 / libadwaita styles
  xdg.configFile = {
    "gtk-4.0/assets".source = "${catppuccinPackage}/share/themes/${themeName}/gtk-4.0/assets";
    "gtk-4.0/gtk.css".source = "${catppuccinPackage}/share/themes/${themeName}/gtk-4.0/gtk.css";
    "gtk-4.0/gtk-dark.css".source =
      "${catppuccinPackage}/share/themes/${themeName}/gtk-4.0/gtk-dark.css";
  };
}
