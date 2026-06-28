{ pkgs, ... }:

{
  programs.helix = {
    enable = true;

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
      };
    };
  };
}
