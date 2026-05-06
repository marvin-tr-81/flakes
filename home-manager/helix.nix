{ pkgs, ... }:
{

  programs.helix = {
    enable = true;

    extraPackages = with pkgs; [
      texlab
      ltex-ls
      marksman # Optional: if you also edit markdown
    ];

    languages = {
      language = [
        {
          name = "python";
          language-servers = [
            "pyright"
            "ruff"
          ];
        }
        {
          name = "nix";
          language-servers = [ "nixd" ];
        }
        {
          name = "latex";
          language-servers = [ "texlab" "ltex-ls" ];
          auto-format = true;
        }
      ];

      language-server = {
        pyright.command = "${pkgs.pyright}/bin/pyright-langserver";
        pyright.args = [ "--stdio" ];

        nixd.command = "${pkgs.nixd}/bin/nixd";

        ruff.command = "${pkgs.ruff}/bin/ruff";
        ruff.args = [ "server" ];
      };
    };
  };

  home.packages = with pkgs; [
    pyright # Python LSP
    nixd # Nix LSP
    ruff # Python formatter/linter
  ];

}
