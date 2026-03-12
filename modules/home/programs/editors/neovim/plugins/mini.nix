{
  programs.nixvim = {
    plugins = {
      mini-ai.enable = true;
      mini-icons.enable = true;
      mini-pairs.enable = true;
      mini-statusline.enable = true;
      mini-surround = {
        enable = true;
        # mappings = {
        #   add = "sa";
        #   delete = "sd";
        #   replace = "sr";
        #   find = "sf";
        #   find_left = "sF";
        #   highlight = "sh";
        #   update_n_lines = "sn";
        # };
      };
    };
  };
}
