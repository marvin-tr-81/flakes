{ pkgs, ... }: {
  environment.systemPackages = with pkgs; [
    btop
    htop
    fastfetch
    ripgrep
  ];
}
