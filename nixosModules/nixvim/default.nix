{ pkgs, ... }:

{

  programs.nixvim =

    {

      enable = true;

      imports = [
        ./core
        ./plugins
      ];

      #colorschemes.gruvbox.enable = true;
      defaultEditor = true;
    };

  # Formatters and linters
  environment.systemPackages = with pkgs; [
    ruff # python
    nixfmt-rfc-style # nix
    tex-fmt # latex
  ];

}
