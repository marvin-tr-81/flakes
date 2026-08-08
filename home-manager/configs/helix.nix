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
      ];
    };
  };

  home.packages = with pkgs; [
    nil # nix lsp
    nixfmt # nix formatter
  ];
}
