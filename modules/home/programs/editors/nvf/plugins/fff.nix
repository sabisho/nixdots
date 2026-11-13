{pkgs, ...}: {
  programs.nvf.settings.vim = {
    extraPlugins = with pkgs.vimPlugins; {
      fff = {
        package = fff-nvim;
        setup = ''
          require("fff").setup({
            prompt = "--> ",
            title = "Find Files",
            layout = {
              prompt_position = "top",
            },
          })
        '';
      };
    };
  };
}
