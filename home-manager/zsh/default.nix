{ config, ... }:
{

  programs.zsh = {

    enable = true;

    enableCompletion = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;

    shellAliases = {
      ll = "ls -l";
      la = "ls -la";

      v = "nvim";
      ff = "fastfetch";

    };

    history.size = 1000;
    history.path = "${config.xdg.dataHome}/zsh/history";

  };

}
