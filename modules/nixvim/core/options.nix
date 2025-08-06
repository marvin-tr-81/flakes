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

  diagnostic.settings = {
    severity_sort = true;
    signs = {
      text = {
        "__rawKey__vim.diagnostic.severity.ERROR" = "";
        "__rawKey__vim.diagnostic.severity.WARN" = "";
        "__rawKey__vim.diagnostic.severity.HINT" = "";
        "__rawKey__vim.diagnostic.severity.INFO" = "󰌶";
      };
    };
    underline = {
      severity.__raw = ''vim.diagnostic.severity.ERROR'';
    };
    virtual_lines = {
      current_line = true;
    };
    virtual_text = {
      spacing = 2;
      source = "if_many";
      prefix = "●";
    };
  };

}
