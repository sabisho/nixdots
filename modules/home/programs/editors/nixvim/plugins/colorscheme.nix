{
  programs.nixvim = {
    colorschemes.gruvbox-material-nvim = {
      enable = true;
      settings = {
        background = {
          transparent = true;
        };
      };
    };
    # colorschemes.gruvbox = {
    #   enable = true;
    #   settings = {
    #     contrast = "hard";
    #     bold = true;
    #     italic = {
    #       strings = true;
    #       comments = true;
    #       operators = false;
    #       folds = true;
    #     };
    #     transparent_mode = true;
    #     overrides = {
    #       Pmenu = {link = "Normal";};
    #     };
    #   };
    # };
  };
}
