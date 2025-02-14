{ lib, pkgs, ... }:
{
  programs.starship = {

    enable = true;

    enableZshIntegration = true;

    settings = lib.mkMerge [

      (builtins.fromTOML (
        builtins.readFile "${pkgs.starship}/share/starship/presets/nerd-font-symbols.toml"
      ))

      {
        add_newline = true;
        command_timeout = 1300;
        scan_timeout = 50;

        format = lib.concatStrings [
          "$os"
          "$username"
          "$hostname"
          "$directory"
          "$git_branch"
          "$git_commit"
          "$git_state"
          "$git_status"
          "$fill"
          "$nix_shell"
          "$python"
          "$jobs"
          "$cmd_duration"
          "$time"
          "$line_break"
          "$character"
        ];

        os = {
          disabled = false;
        };

        cmd_duration = {
          format = "[$duration]($style) ";
        };

        time = {
          disabled = false;
          format = "[󱑀$time]($style) ";
        };

      }
    ];

  };
}
