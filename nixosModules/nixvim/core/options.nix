{
  programs.nixvim = {

    globals =
      {
        netrw_liststyle = 3;
      };

    opts = {

      relativenumber = true;
      number = true;

      spell = false;
      wrap = false;

      tabstop = 2;
      shiftwidth = 2;
      expandtab = true;
      autoindent = true;

    };
  };
}
