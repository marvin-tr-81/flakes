{ lib, ... }:
{
  programs.mangohud = {

    enable = true;
    enableSessionWide = true;

    settings = {
      font_size = lib.mkForce 24;
      font_scale = lib.mkForce 1.0;
      font_size_text = lib.mkForce 24;
      alpha = lib.mkForce 0.8;
      background_alpha = lib.mkForce 0.5;
    };

  };
}
