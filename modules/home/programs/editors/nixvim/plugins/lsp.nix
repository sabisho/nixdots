{
  programs.nixvim = {
    lsp.inlayHints.enable = true;
    plugins = {
      lsp = {
        enable = true;
        servers = {
          nixd.enable = true;
          rust_analyzer.enable = true;
          pyrefly.enable = true;
        };
      };
    };
  };
}
