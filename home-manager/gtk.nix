{ pkgs, ... }:
{
  gtk = {

    enable = true;

    theme = {
      name = "catppuccin-frappe-mauve-compact";
      package = pkgs.catppuccin-gtk.override {
        accents = [ "mauve" ];
        size = "compact";
        # tweaks = [ "black" ];
        variant = "frappe";
      };
    };

    # iconTheme = {
    #   name = "Tela-circle-dark";
    #   package = pkgs.tela-circle-icon-theme;
    # };

    gtk3.extraConfig.Settings = ''gtk-application-prefer-dark-themes=1'';
    gtk4.extraConfig.Settings = ''gtk-application-prefer-dark-themes=1'';

  };
}
