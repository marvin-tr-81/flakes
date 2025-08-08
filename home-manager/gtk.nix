{ pkgs, config, ... }:
{

  gtk = {
    enable = true;

    theme = {
      name = "Graphite-Dark";
      package = pkgs.graphite-gtk-theme.override {
        tweaks = [ "darker" ];
        # themeVariants = [ "pink" ];
        # colorVariants = [ "dark" ];
      };
    };
    gtk3.extraConfig.Settings = ''gtk-application-prefer-dark-themes=1'';
    gtk4.extraConfig.Settings = ''gtk-application-prefer-dark-themes=1'';
  };

  # theme = {
  #   name = "Catppuccin-Frappe";
  #   package = pkgs.catppuccin-gtk.override {
  #     accents = [ "mauve" ];
  #     tweaks = [ ];
  #     variant = "frappe";
  #   };
  # };

  # };

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
