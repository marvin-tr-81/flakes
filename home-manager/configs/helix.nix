{ pkgs, ... }:

{
  programs.helix = {
    enable = true;

    defaultEditor = true;

    settings = {

      editor = {
        line-number = "relative";
        cursorline = true;
        color-modes = true;
        text-width = 80;

        cursor-shape = {
          normal = "block";
          insert = "bar";
          select = "underline";
        };

        lsp = {
          display-messages = true;
          display-inlay-hints = true;
        };

        indent-guides = {
          render = true;
          character = "┊";
        };
      };
    };

    languages = {
      language = [
        {
          name = "nix";
          auto-format = true;
          formatter = {
            command = "nixfmt";
          };
          language-servers = [ "nil" ];
        }
        {
          name = "lua";
          auto-format = true;
          language-servers = [ "lua-language-server" ];
        }
        {
          name = "python";
          auto-format = true;
          formatter = {
            command = "ruff";
            args = [
              "format"
              "-"
            ];
          };
          language-servers = [
            "ty"
            "ruff"
          ];
        }
        {
          name = "latex";
          auto-format = true;
          language-servers = [ "texlab" ];
        }
        {
          name = "bibtex";
          auto-format = true;
          formatter = {
            command = "bibtex-tidy";
            args = [ "-" ];
          };
          language-servers = [
            "texlab"
            "bibtex-tidy"
          ];
        }
        {
          name = "markdown";
          auto-format = true;
          formatter = {
            command = "marksman";
            args = [ "server" ];
          };
          language-servers = [ "marksman" ];
        }
      ];

      language-server.texlab = {
        command = "texlab";
        config.texlab = {
          build = {
            onSave = true;
            executable = "latexmk";
            args = [
              "-pdf"
              "-interaction=nonstopmode"
              "-synctex=1"
              "%f"
            ];
          };
          forwardSearch = {
            executable = "zathura";
            args = [
              "--synctex-forward"
              "%l:%c:%p"
              "%p"
            ];
          };
        };
      };
    };
  };

  home.packages = with pkgs; [
    nil # nix lsp
    nixfmt # nix formatter
    lua-language-server # lua lsp
    ty # python lsp
    ruff # python formatter and linter
    texlab # latex and bibtex lsp
    bibtex-tidy # bibtex formatter
    marksman # markdown lsp
  ];
}
