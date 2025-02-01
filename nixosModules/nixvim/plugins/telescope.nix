{

  plugins.telescope = {
    
    enable = true;

    extensions.fzf-native.enable = true;

    settings.defaults = {
      path_display = "smart";
      mappings = {
        i = {
          "<C-k>" = {
            __raw = "require('telescope.actions').move_selection_previous"; # move to prev result
          };
          "<C-j>" = {
            __raw = "require('telescope.actions').move_selection_next"; # move to next result
          };
          "<C-q>" = {
            __raw = "require('telescope.actions').send_selected_to_qflist + require('telescope.actions').open_qflist";
          };
        };
      };
    };

  };


  keymaps = [
    {
      mode = "n";
      action = "<cmd>Telescope find_files<cr>";
      key = "<leader>ff";
      options.desc = "Fuzzy find files in cwd";
    }
    {
      mode = "n";
      action = "<cmd>Telescope oldfiles<cr>";
      key = "<leader>fr";
      options.desc = "Fuzzy find recent files";
    }
    {
      mode = "n";
      action = "<cmd>Telescope live_grep<cr>";
      key = "<leader>fs";
      options.desc = "Find string in cwd";
    }
    {
      mode = "n";
      action = "<cmd>Telescope grep_string<cr>";
      key = "<leader>fc";
      options.desc = "Find string under cursor in cwd";
    }
  ];

}
