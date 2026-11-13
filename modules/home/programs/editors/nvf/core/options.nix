{lib, ...}: {
  programs.nvf.settings.vim = {
    globals.mapleader = " ";

    lineNumberMode = "relNumber";
    searchCase = "smart";
    undoFile.enable = true;

    clipboard = {
      enable = true;
      registers = "unnamedplus";
      providers.wl-copy.enable = true;
    };

    opts = {
      # Line Numbering Settings
      cursorline = true;
      signcolumn = "yes";

      # Tab Settings
      tabstop = 2;
      expandtab = true;
      shiftwidth = 2;
      shiftround = true;
      smartindent = true;

      # Search Settings
      incsearch = true;
      hlsearch = true;

      # QOL Settings
      winborder = "rounded";
      showmode = false;
      timeoutlen = 300;
      splitbelow = true;
      splitright = true;
      termguicolors = true;

      # Buffer Settings
      list = true;
      listchars = {
        tab = "» ";
        trail = "·";
        nbsp = "␣";
      };
      inccommand = "split";
      scrolloff = 10;
      foldmethod = "indent";
      foldlevel = 99;
      foldenable = false;
    };

    # Diagnostics Configuration
    diagnostics = {
      enable = true;
      config = {
        virtual_lines = {
          current_line = true;
        };
        virtual_text = false;
        signs.text = lib.generators.mkLuaInline ''
          {
            [vim.diagnostic.severity.ERROR] = "",
            [vim.diagnostic.severity.WARN] = "",
            [vim.diagnostic.severity.HINT] = "󰌵",
            [vim.diagnostic.severity.INFO] = "",
          }
        '';
      };
    };
  };
}
