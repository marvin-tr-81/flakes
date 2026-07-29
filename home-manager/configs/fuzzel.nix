{ lib, ... }:
{
  programs.fuzzel = {

    enable = true;

    settings = {
      main = {
        font = lib.mkForce "monospace:size=12";
      };
      key-bindings = {
        delete-line-forward = "none";
        prev = "Up Control+k";
        next = "Down Control+j";
      };
    };

  };
}
