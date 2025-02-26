{
  nixpkgs.config.allowUnfree = true;

  imports = [
    ./cliapps.nix
    ./guiapps.nix
    ./systemapps.nix
    ./LaTeX.nix
    ./python3.nix
    ./formatters.nix
    ./starship.nix
    ./framework-tool.nix
    ./keymapp.nix
  ];
}
