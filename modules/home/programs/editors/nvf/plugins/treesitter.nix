{pkgs, ...}: {
  programs.nvf.settings.vim = {
    treesitter = {
      enable = true;
      highlight.enable = true;
      grammars = with pkgs.vimPlugins.nvim-treesitter.grammarPlugins; [
        kdl
        ini
        regex
      ];
    };
  };
}
