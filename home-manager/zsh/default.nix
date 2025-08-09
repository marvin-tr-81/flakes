{ config, ... }:
{
  # DO NOT FORGET TO SOURCE .ZSHRC AFTER EDITING

  programs.zsh = {

    enable = true;

    dotDir = "${config.xdg.configHome}/zsh";

    enableCompletion = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;

    shellAliases = {
      ll = "ls -lh";
      la = "ls -lha";

      open = "xdg-open";

      nv = "nvim";
      ff = "fastfetch";

      charge-limit = "sudo framework_tool --charge-limit";

    };

    history.size = 10000;
    history.path = "${config.xdg.dataHome}/zsh/history";

    initContent = ''
      bindkey -v '^H' backward-delete-char
      bindkey -v '^?' backward-delete-char
    '';

  };

}
