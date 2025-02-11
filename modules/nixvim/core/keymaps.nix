{

  globals.mapleader = " ";

  keymaps = [

    # use jk to exit insert mode 
    {
      mode = "i";
      action = "<ESC>";
      key = "jk";
      options = {
        desc = "Exit insert mode with jk";
      };
    }

    # clear search highlights
    {
      mode = "n";
      action = ":nohl<CR>";
      key = "<leader>nh";
      options = {
        desc = "Clear search highlights";
      };
    }

    # delete single character without copying into register
    {
      mode = "n";
      action = "x";
      key = "_x";
    }

    # increment/decrement numbers
    {
      mode = "n";
      action = "<C-a>";
      key = "<leader>+";
      options = {
        desc = "Increment number";
      };
    }
    {
      mode = "n";
      action = "<C-x>";
      key = "<leader>-";
      options = {
        desc = "Decrements number";
      };
    }

    # split management
    {
      mode = "n";
      action = "<C-w>v";
      key = "<leader>sv";
      options = {
        desc = "Split window vertically";
      };
    }
    {
      mode = "n";
      action = "<C-w>s";
      key = "<leader>sh";
      options = {
        desc = "Split window horizontally";
      };
    }
    {
      mode = "n";
      action = "<C-w>=";
      key = "<leader>se";
      options = {
        desc = "Make splits equal size";
      };
    }
    {
      mode = "n";
      action = "<cmd>close<CR>";
      key = "<leader>sx";
      options = {
        desc = "Close current split";
      };
    }

    # tab management
    {
      mode = "n";
      action = "<cmd>tabnew<CR>";
      key = "<leader>to";
      options = {
        desc = "Open new tab";
      };
    }
    {
      mode = "n";
      action = "<cmd>tabclose<CR>";
      key = "<leader>tx";
      options = {
        desc = "Close current tab";
      };
    }
    {
      mode = "n";
      action = "<cmd>tabn<CR>";
      key = "<leader>tn";
      options = {
        desc = "Go to next tab";
      };
    }
    {
      mode = "n";
      action = "<cmd>tabp<CR>";
      key = "<leader>tp";
      options = {
        desc = "Go to previous tab";
      };
    }
    {
      mode = "n";
      action = "<cmd>tabnew %<CR>";
      key = "<leader>tf";
      options = {
        desc = "Open current buffer in new tab";
      };
    }

  ];

}
