{ pkgs, inputs, ... }: {
  environment.systemPackages = with pkgs; [
    kitty
    firefox
  ];
}
