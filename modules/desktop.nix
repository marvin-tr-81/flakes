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
    hyprlauncher
    hyprpwcenter

    kitty
    firefox
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

}
