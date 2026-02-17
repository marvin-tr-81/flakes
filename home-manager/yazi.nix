{
  programs.yazi = {

    enable = true;

    enableZshIntegration = true;

    settings = {
      log = {
        enabled = false;
      };
      mgr = {
        show_hidden = false;
        sort_by = "natural";
        sort_dir_first = true;
        sort_reverse = false;
        sort_translit = true;
        linemode = "size";
      };
      preview = {
        max_width = 1000;
        max_height = 2000;
      };

    };

    shellWrapperName = "y";

  };
}
