{ pkgs, ... }:
{
  qt = {
    enable = true;
    platformTheme.name = "kvantum";
    style.name = "kvantum";
  };

  home.packages = with pkgs; [
    (catppuccin-kvantum.override {
      variant = "frappe";
      accent = "mauve";
    })
    libsForQt5.qtstyleplugin-kvantum
    libsForQt5.qt5ct
  ];

}
