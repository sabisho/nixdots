{
  programs.nixvim = {
    plugins = {
      conform-nvim = {
        enable = true;
        autoInstall.enable = true;
        settings = {
          format_on_save = {timeout_ms = 500;};
          formatters_by_ft = {
            # kdl = ["kdlfmt"];
            c = ["clang_format"];
            lua = ["stylua"];
            nix = ["alejandra"];
            python = ["ruff"];
            rust = ["rustfmt"];
          };
        };
      };
    };
  };
}
