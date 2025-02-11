{

  plugins.nvim-autopairs = {
    
    enable = true;

    lazyLoad.settings = {
      event = "InsertEnter";
      check_ts = true;
      ts_config = {
        lua = [ "string" ];
      };
    };

  };

}
