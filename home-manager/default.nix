{
  home-manager = {
    useGlobalPkgs = true;
    useUserPackages = true;
    backupFileExtension = "backup";
    users.marvin.imports = [
      ./home.nix
    ];
  };
}
