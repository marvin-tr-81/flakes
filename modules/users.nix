# users.nix

{
  users.users.marvin = {
    isNormalUser = true;
    extraGroups = [ "wheel" ];
  };
}
