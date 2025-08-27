{ pkgs, ... }:
{
  wayland.windowManager.hyprland = {

    enable = true;

    plugins = [
      pkgs.hyprlandPlugins.hyprbars
    ];

  };

  imports = [

    ./plugins
    ./monitors.nix
    ./my_programs.nix
    ./autostart.nix
    ./environment_variables.nix
    ./look_and_feel.nix
    ./input.nix
    ./keybindings.nix
    ./windows_and_workspaces.nix
    ./ecosystem.nix

  ];

}
