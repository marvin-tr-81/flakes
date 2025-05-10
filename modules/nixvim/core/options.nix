{

  clipboard = {

    register = "unnamedplus";
    providers.wl-copy.enable = true;

  };

  globals = {

    netrw_liststyle = 3;

  };

  opts = {

    sessionoptions = "blank,buffers,curdir,folds,help,tabpages,winsize,winpos,terminal,localoptions";

    # line numbers
    relativenumber = true;
    number = true;

    # spelling and wrapping
    spell = true;
    wrap = false;

    # tabs and indentation
    tabstop = 2;
    shiftwidth = 2;
    expandtab = true;
    autoindent = true;

    # search settings
    ignorecase = true;
    smartcase = true;

    # cursor line
    cursorline = true;

    # sign column
    termguicolors = true;
    signcolumn = "yes";

    # backspace
    backspace = "indent,eol,start";

    # split window
    splitright = true;
    splitbelow = true;

    # turn off swap file
    swapfile = false;

  };

}
