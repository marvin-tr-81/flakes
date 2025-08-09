{

  globals = {
    loaded_netrw = 1;
    loaded_netrwPlugin = 1;
  };

  plugins.nvim-tree = {

    enable = true;

    settings = {

      view = {
        width = 35;
        relativenumber = true;
      };

      renderer = {
        indentMarkers.enable = true;
        icons.glyphs.folder = {
          arrowClosed = ""; # arrow when folder is closed
          arrowOpen = ""; # arrow when folder is open
        };
      };

      actions.windowPicker.enable = false;
      filters.custom = [ ".DS_Store" ];
      git.ignore = false;

    };

  };

  keymaps = [

    {
      mode = "n";
      action = "<cmd>NvimTreeToggle<CR>";
      key = "<leader>ee";
      options.desc = "Toggle file explorer";
    }
    {
      mode = "n";
      action = "<cmd>NvimTreeFindFileToggle<CR>";
      key = "<leader>ef";
      options.desc = "Toggle file explorer on current file";
    }
    {
      mode = "n";
      action = "<cmd>NvimTreeCollapse<CR>";
      key = "<leader>ec";
      options.desc = "Collapse file explorer";
    }
    {
      mode = "n";
      action = "<cmd>NvimTreeRefresh<CR>";
      key = "<leader>er";
      options.desc = "Refresh file explorer";
    }

  ];

}
