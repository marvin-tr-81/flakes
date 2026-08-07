{
  programs.zsh = {
    enable = true;

    defaultKeymap = "viins";
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;

    shellAliases = {
      la = "ls -lha";
      ll = "ls -lh";
    };
  };
}
