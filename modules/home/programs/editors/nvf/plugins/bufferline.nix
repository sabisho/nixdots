{
  programs.nvf.settings.vim = {
    tabline.nvimBufferline = {
      enable = true;
      setupOpts.options = {
        always_show_bufferline = false;
        diagnostics = "nvim_lsp"; # show LSP error counts in tabs
        show_buffer_close_icons = false;
        show_close_icon = false;
      };
    };
    visuals.nvim-web-devicons.enable = true;
  };
}
