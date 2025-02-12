{

  programs.zsh = {

    enable = true;

    enableCompletion = true;
    # enableAutosuggestions = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;

    shellAliases = {
      ll = "ls -l";
      la = "ls -la";

      v = "nvim";
      ff = "fastfetch";
    };

  };

}
