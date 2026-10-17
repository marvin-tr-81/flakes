{
  pkgs,
  lib,
  inputs,
  ...
}:

let
  # Define OLED pitch-black palette overrides for Mocha
  oledPalette = {
    mocha = {
      base = "000000";
      mantle = "010101";
      crust = "020202";
    };
  };
in
{
  # 1. System-wide Catppuccin configuration
  catppuccin = {
    enable = true;
    autoEnable = true;
    flavor = "mocha";
    accent = "mauve";

    # 2. Inject OLED overrides into whiskers for compiled theme ports
    sources = inputs.catppuccin.packages.${pkgs.stdenv.hostPlatform.system}.overrideScope (
      final: prev: {
        whiskers = pkgs.symlinkJoin {
          name = "whiskers-wrapped";
          paths = [ prev.whiskers ];
          nativeBuildInputs = [ pkgs.makeBinaryWrapper ];
          postBuild = ''
            wrapProgram $out/bin/whiskers \
              --add-flag ${lib.escapeShellArg "--color-overrides=${builtins.toJSON oledPalette}"}
          '';
          meta.mainProgram = "whiskers";
        };
      }
    );
  };
}
