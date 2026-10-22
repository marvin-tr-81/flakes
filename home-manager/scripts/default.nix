{ pkgs, ... }:

{
  home.packages = [
    (pkgs.writeShellApplication {
      name = "gamescope-auto";

      runtimeInputs = [
        pkgs.wlr-randr
        pkgs.jq
        pkgs.gamescope
      ];

      # Pulls in your separate .sh file at build time
      text = builtins.readFile ./gamescope-auto.sh;
    })
  ];
}
