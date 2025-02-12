# users.nix
{ pkgs, ... }:
{
  users = {

    defaultUserShell = pkgs.zsh;

    users.marvin = {
      isNormalUser = true;
      extraGroups = [ "wheel" ];
    };

  };
}
