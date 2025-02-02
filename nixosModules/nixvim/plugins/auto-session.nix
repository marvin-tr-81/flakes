{

  plugins.auto-session = {
    
    enable = true;

    settings = {
      auto_restore = false;
      suppressed_dirs = [ "~/" "~/Dev/" "~/Downloads" "~/Documents" "~/Desktop/" ];
    };

  };


  keymaps = [
    {
      mode = "n";
      action = "<cmd>SessionRestore<CR>";
      key = "<leader>wr";
      options.desc = "Restore session for cwd";
    }
    {
      mode = "n";
      action = "<cmd>SessionSave<CR>";
      key = "<leader>ws";
      options.desc = "Save session for auto session root dir";
    }
  ];

}
