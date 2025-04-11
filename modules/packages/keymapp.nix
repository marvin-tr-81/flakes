# zsa keymapp app
{ pkgs, ... }:
{

  environment.systemPackages = with pkgs; [
    keymapp
  ];

}
