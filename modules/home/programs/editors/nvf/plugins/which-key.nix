{
  programs.nvf.settings.vim = {
    highlight = {
      WhichKeyIcon = {
        underline = false;
        nocombine = true;
      };
    };

    binds.whichKey = {
      enable = true;
      setupOpts = {
        preset = "helix";
        win = {
          title = true;
          title_pos = "center";
          border = "rounded";
        };

        icons = {
          rules = [
            {
              pattern = "buffer";
              icon = "󰈙 ";
            }
            {
              pattern = "file";
              icon = "󰱼 ";
            }
            {
              pattern = "grep";
              icon = "󱉶 ";
            }
            {
              pattern = "rename";
              icon = "󰑕 ";
            }
            {
              pattern = "quit";
              icon = "󰈆 ";
            }
            {
              pattern = "explore";
              icon = "󰉋 ";
            }
            {
              pattern = "nix";
              icon = "󱄅 ";
            }
          ];
        };
      };
    };
  };
}
