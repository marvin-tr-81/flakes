{
  programs.zsh = {
    enable = true;

    defaultKeymap = "viins";
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;

    shellAliases = {
      la = "ls -lha";
      ll = "ls -lh";
      open = "xdg-open";
    };

    initContent = ''
      # Allow backspace over existing text and line breaks in Vi insert mode
      bindkey -M viins '^?' backward-delete-char
      bindkey -M viins '^H' backward-delete-char

      # Vi mode configuration
      bindkey -v
      export KEYTIMEOUT=1

      # Change cursor shape for different vi modes
      function zle-keymap-select {
        if [[ ''${KEYMAP} == vicmd ]] || [[ $1 = 'block' ]]; then
          echo -ne '\e[2 q'
        elif [[ ''${KEYMAP} == main ]] || [[ ''${KEYMAP} == viins ]] || [[ ''${KEYMAP} = "" ]] || [[ $1 = 'beam' ]]; then
          echo -ne '\e[6 q'
        fi
      }
      zle -N zle-keymap-select

      zle-line-init() {
        zle -K viins # initiate vi insert as keymap
        echo -ne "\e[6 q"
      }
      zle -N zle-line-init

      # Use beam shape cursor on startup
      echo -ne '\e[6 q'

      # Use beam shape cursor for each new prompt
      preexec() {
        echo -ne '\e[6 q'
      }
    '';
  };
}
