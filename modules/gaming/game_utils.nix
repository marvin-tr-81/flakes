{ pkgs, ... }:
{

  hardware = {
    xone.enable = true;
  };

  environment.systemPackages = with pkgs; [
    mangohud
  ];

}
