{

  plugins.conform-nvim = {

    enable = true;

    lazyLoad.settings.event = [
      "BufReadPre"
      "BufNewFile"
    ];

    settings = {
      formatters_by_ft = {
        python = [
          "ruff_format"
          "ruff_fix"
          "ruff_organize_imports"
        ];
        nix = [
          "nixfmt"
        ];
        tex = [
          "tex-fmt"
        ];
      };
      format_on_save = {
        lsp_fallback = true;
        async = false;
        timeout_ms = 1000;
      };
    };

  };

}
