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

      o = "xdg-open";

      nv = "nvim";
      ff = "fastfetch";

      charge-limit = "sudo framework_tool --charge-limit";

    };

    history.size = 1000;
    history.path = "${config.xdg.dataHome}/zsh/history";

  };

}
