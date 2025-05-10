{

  plugins = {

    ts-autotag = {

      enable = true;

    };

    treesitter = {

      enable = true;

      lazyLoad.settings.event = [
        # "BufReadPre"
        "BufNewFile"
      ];

      settings = {

        highlight.enable = true;

        indent.enable = true;

        ensure_installed = "all";

        incremental_selection = {
          enable = true;
          keymaps = {
            init_selection = "<C-space>";
            node_incremental = "<C-space>";
            scope_incremental = false;
            node_decremental = "<bs>";
          };
        };

      };

    };

  };

}
