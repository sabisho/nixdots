{
  programs.nixvim = {
    plugins = {
      which-key = {
        enable = true;
        settings = {
          win = {
            title = true;
            # title_pos = "center";
            border = "rounded";
            # position = "bottom";
            # padding = [1 2 1 2];
          };
        };
      };
    };
  };
}
