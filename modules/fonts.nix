{ pkgs, ... }:
{
  fonts = {
    enableDefaultPackages = true;
    packages = with pkgs; [
      nerd-fonts.jetbrains-mono
      dejavu_fonts
      noto-fonts-emoji
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
