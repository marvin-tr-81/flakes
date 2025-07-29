{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    heroic
    lutris
    dosbox-staging
  ];
}
