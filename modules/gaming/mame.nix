{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [

    mame

  ];

}
