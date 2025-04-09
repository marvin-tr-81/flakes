# zsa keymapp app
{ pkgs, lib, ... }:
{
  nixpkgs.config.allowUnfreePredicate =
    pkg:
    builtins.elem (lib.getName pkg) [
      "keymapp"
    ];

  environment.systemPackages = with pkgs; [
    keymapp
  ];
}
