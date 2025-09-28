{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    yazi
    btop
    htop
    fastfetch
    ripgrep
    zip
  ];
}
