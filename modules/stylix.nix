{
  pkgs,
  ...
}:

{

  stylix = {

    enable = true;

    # disable hyperpaper wallpaper
    # targets.hyprland.hyprpaper.enable = false;

    image = pkgs.fetchurl {
      url = "https://w.wallhaven.cc/full/vq/wallhaven-vq898p.png";
      sha256 = "9IxPTlzLUWirsiUtklaHv1XPL2pD1v4Gd1iHwEgxWs0=";
    };

    # base16Scheme = "${pkgs.base16-schemes}/share/themes/gruvbox-dark-hard.yaml";
    # base16Scheme = "${pkgs.base16-schemes}/share/themes/catppuccin-latte.yaml";
    # base16Scheme = "${pkgs.base16-schemes}/share/themes/catppuccin-macchiato.yaml";
    base16Scheme = "${pkgs.base16-schemes}/share/themes/catppuccin-mocha.yaml";
    # base16Scheme = "${pkgs.base16-schemes}/share/themes/tokyo-night-dark.yaml";
    # base16Scheme = "${pkgs.base16-schemes}/share/themes/rose-pine.yaml";

    cursor = {
      package = pkgs.bibata-cursors;
      name = "Bibata-Modern-Ice";
      size = 24;
    };

    fonts = {
      monospace = {
        package = pkgs.nerd-fonts.jetbrains-mono;
        name = "JetBrainsMonoNL Nerd Font Mono";
      };
      sansSerif = {
        package = pkgs.dejavu_fonts;
        name = "DejaVu Sans";
      };
      serif = {
        package = pkgs.dejavu_fonts;
        name = "DejaVu Serif";
      };
      emoji = {
        package = pkgs.noto-fonts-emoji;
        name = "Noto Color Emoji";
      };

    };

  };

}
