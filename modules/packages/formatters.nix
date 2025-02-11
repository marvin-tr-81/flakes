# Formatters and linters for neovim
{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    ruff # python
    nixfmt-rfc-style # nix
    tex-fmt # latex
  ];
}
