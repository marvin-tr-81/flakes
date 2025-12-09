{ pkgs, ... }:
{

  hardware = {
    # xone.enable = true;
  };

  environment.systemPackages = with pkgs; [
    mangohud
  ];

  programs = {
    gamemode.enable = true;
    gamescope.enable = true;
  };

}
