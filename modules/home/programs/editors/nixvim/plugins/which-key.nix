{
  programs.nixvim = {
    # Disabled the helix's style underline on which-key icons.
    highlight = {
      WhichKeyIcon = {
        underline = false;
        nocombine = true;
      };
    };
    plugins = {
      which-key = {
        enable = true;
        settings = {
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
  };
}
