{ pkgs, ... }: {
  environment.systemPackages = with pkgs; [
    brightnessctl
    playerctl
    dunst
    libnotify
  ];
}
