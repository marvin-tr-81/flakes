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

    initContent = ''
      # Allow backspace over existing text and line breaks in Vi insert mode
      bindkey -M viins '^?' backward-delete-char
      bindkey -M viins '^H' backward-delete-char
    '';
  };
}
