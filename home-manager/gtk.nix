{ pkgs, config, ... }:
{

  gtk = {
    enable = true;

    # theme = {
    #   name = "Catppuccin-Frappe";
    #   package = pkgs.catppuccin-gtk.override {
    #     accents = [ "mauve" ];
    #     tweaks = [ ];
    #     variant = "frappe";
    #   };
    # };

  };

  # Now symlink the `~/.config/gtk-4.0/` folder declaratively:
  # xdg.configFile = {
  #   "gtk-4.0/assets".source =
  #     "${config.gtk.theme.package}/share/themes/${config.gtk.theme.name}/gtk-4.0/assets";
  #   "gtk-4.0/gtk.css".source =
  #     "${config.gtk.theme.package}/share/themes/${config.gtk.theme.name}/gtk-4.0/gtk.css";
  #   "gtk-4.0/gtk-dark.css".source =
  #     "${config.gtk.theme.package}/share/themes/${config.gtk.theme.name}/gtk-4.0/gtk-dark.css";
  # };

}
