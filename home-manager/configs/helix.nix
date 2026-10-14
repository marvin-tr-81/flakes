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

        cursor-shape = {
          normal = "block";
          insert = "bar";
          select = "underline";
        };

        lsp = {
          display-messages = true;
          display-inlay-hints = true;
        };

        #     indent-guides = {
        #       render = true;
        #       character = ":";
        #     };
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
      ];
    };
  };

  home.packages = with pkgs; [
    nil # nix lsp
    nixfmt # nix formatter
    lua-language-server # lua lsp
    ty # python lsp
    ruff # python formatter and linter
  ];
}
