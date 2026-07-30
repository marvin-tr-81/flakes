{ pkgs, ... }:

{
  programs.hyprland = {
    enable = true;
    xwayland.enable = true;
  };

  environment.systemPackages = with pkgs; [

    brightnessctl
    playerctl

    wl-clipboard
    hyprpwcenter

    firefox

    keymapp

    libreoffice-fresh
    hunspell
    hunspellDicts.en_US
    hunspellDicts.tr_TR
    hunspellDicts.fr-moderne
    hunspellDicts.pt_PT
    hunspellDicts.pt_BR
  ];

  # Force electron apps to use Wayland natively
  environment.sessionVariables = {
    NIXOS_OZONE_WL = "1";
  };

  fonts = {
    enableDefaultPackages = true;
    packages = with pkgs; [
      nerd-fonts.jetbrains-mono
      dejavu_fonts
      noto-fonts-color-emoji
      corefonts
      vista-fonts
    ];

    fontconfig = {
      defaultFonts = {
        serif = [ "DejaVu Serif" ];
        sansSerif = [ "DejaVu Sans" ];
        monospace = [ "JetBrainsMonoNL Nerd Font Mono" ];
        emoji = [ "Noto Color Emoji" ];
      };
    };
  };

  xdg.portal = {
    enable = true;
    extraPortals = [ pkgs.xdg-desktop-portal-gtk ];
  };

}
