{
  programs.starship = {
    enable = true;

    enableZshIntegration = true;

    presets = [
      "nerd-font-symbols"
    ];

    settings = {
      format = "$os$username$hostname$directory$git_branch$git_status$line_break$character";
      add_newline = false;

      os = {
        disabled = false;
      };

      directory = {
        truncation_length = 0;
        truncate_to_repo = false;
      };

      # username = {
      #   show_always = true;
      # };

      # hostname = {
      #   ssh_only = false;
      # };
    };
  };
}
