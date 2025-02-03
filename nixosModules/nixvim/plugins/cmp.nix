{

  plugins = {

    cmp = {

      enable = true;

      #lazyLoad.settings.event = "InsertEnter";

      autoEnableSources = true;

      settings = {

        completion.completeopt = "menu,menuone,preview,noselect";

        mapping= {
          __raw = ''
            cmp.mapping.preset.insert({
              ['<C-k>'] = cmp.mapping.select_prev_item(), -- previous suggestion
              ['<C-j>'] = cmp.mapping.select_next_item(), -- next suggestion
              ['<C-b>'] = cmp.mapping.scroll_docs(-4),
              ['<C-f>'] = cmp.mapping.scroll_docs(4), -- show completion suggestions
              ['<C-Space>'] = cmp.mapping.complete(),  -- close completion window
              ['<C-e>'] = cmp.mapping.abort(),
              ['<CR>'] = cmp.mapping.confirm({ select = true }),
            })
          '';
        };

        # Sources for autocompletion
        sources = [
          { name = "luasnip"; }
          { name = "path"; }
          { name = "buffer"; }
        ];

      };

    };

    lspkind = {
      enable = true;
      cmp = {
        ellipsisChar = "...";
        maxWidth = 50;
      };
    };

    luasnip = {
      enable = true;
    };

    friendly-snippets = {
      enable = true;
    };

  };

}
