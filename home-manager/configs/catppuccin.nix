{
  pkgs,
  lib,
  inputs,
  ...
}:

let
  oledPalette = {
    mocha = {
      base = "000000";
      mantle = "010101";
      crust = "020202";
    };
  };
in
{
  imports = [
    inputs.catppuccin.homeModules.catppuccin
  ];

  catppuccin = {
    enable = true;
    autoEnable = true;
    flavor = "mocha";
    accent = "mauve";

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
