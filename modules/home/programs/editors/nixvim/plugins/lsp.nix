{
  programs.nixvim = {
    lsp.inlayHints.enable = true;
    plugins = {
      lsp = {
        enable = true;
        servers = {
          lua_ls.enable = true;
          nixd = {
            enable = true;
          };
          rust_analyzer = {
            enable = true;
            installCargo = true;
            installRustc = true;
          };
          pyrefly = {
            enable = true;
          };
        };
      };
    };
  };
}
