{
  programs.nixvim = {
    plugins = {
      snacks = {
        enable = true;
        settings = {
          bigfile = {
            enabled = true;
          };
          dashboard = {
            enabled = true;
            sections = [
              {section = "header";}
              {
                section = "keys";
                gap = 1;
                padding = 1;
              }
            ];
            preset = {
              header = ''                                                                                   
                      ████ ██████           █████      ██                    
                     ███████████             █████                            
                     █████████ ███████████████████ ███   ███████████  
                    █████████  ███    █████████████ █████ ██████████████  
                   █████████ ██████████ █████████ █████ █████ ████ █████  
                 ███████████ ███    ███ █████████ █████ █████ ████ █████ 
                ██████  █████████████████████ ████ █████ █████ ████ ██████'';

              keys = [
                {
                  icon = "󰱼";
                  key = "f";
                  desc = "Find File";
                  action = "<cmd>lua require('fff').find_files()<CR>";
                }
                {
                  icon = "󰝒";
                  key = "n";
                  desc = "New File";
                  action = ":ene | startinsert";
                }
                {
                  icon = "";
                  key = "g";
                  desc = "Find Text";
                  action = "<cmd>lua require('fff').live_grep()<CR>";
                }
                {
                  icon = "󰙰";
                  key = "r";
                  desc = "Recent Files";
                  action = ":lua Snacks.picker.recent()";
                }
                {
                  icon = "";
                  key = "c";
                  desc = "Config";
                  action = "<cmd>lua require('fff').find_files_in_dir(vim.fn.expand('~/nixdots'))<CR>";
                }
                {
                  icon = "󰦛";
                  key = "s";
                  desc = "Restore Session";
                  section = "session";
                }
                {
                  icon = "";
                  key = "q";
                  desc = "Quit";
                  action = ":qa";
                }
              ];
            };
          };
          explorer = {
            enabled = false;
          };
          image = {
            enable = true;
          };
          indent = {
            enabled = true;
          };
          input = {
            enabled = true;
          };
          notifier = {
            enabled = false;
          };
          picker = {
            enabled = true;
            matcher = {
              frecency = true;
              cwd_bonus = true;
              history_bonus = true;
              sort_empty = true;
            };
          };
          quickfile = {
            enabled = true;
          };
          scope = {
            enabled = true;
          };
          scroll = {
            enabled = true;
          };
          statuscolumn = {
            enabled = true;
          };
          words = {
            enabled = true;
          };
        };
      };
    };
  };
}
