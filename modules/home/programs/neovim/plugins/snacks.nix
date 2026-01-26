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
            };
          };
          explorer = {
            enabled = true;
          };
          indent = {
            enabled = true;
          };
          input = {
            enabled = true;
          };
          notifier = {
            enabled = true;
            timeout = 3000;
          };
          picker = {
            enabled = true;
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
          styles = {
            notification = {
              # wo.wrap = true;  # Uncomment to wrap notifications
            };
          };
        };
      };
    };
  };
}
