{
  programs.nixvim = {
    lsp.inlayHints.enable = true;
    plugins = {
      lsp = {
        enable = true;
        servers = {
          nixd = {
            enable = true;
            package = null;
          };
          rust_analyzer = {
            enable = true;
            package = null;
          };
          pyrefly = {
            enable = true;
            package = null;
          };
        };
      };
    };
  };
}
