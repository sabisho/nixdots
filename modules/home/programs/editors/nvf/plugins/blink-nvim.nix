{
  programs.nvf.settings.vim = {
    visuals.blink-indent.enable = true;

    autocomplete.blink-cmp = {
      enable = true;
      friendly-snippets.enable = true;
      setupOpts = {
        keymap = {
          preset = "default";
        };
        appearance = {
          use_nvim_cmp_as_default = true;
          nerd_font_variant = "mono";
        };
        sources = {
          default = ["lsp" "path" "snippets" "buffer" "cmdline"];
        };
        completion = {
          documentation = {
            auto_show = true;
            auto_show_delay_ms = 200;
          };
        };
      };
    };
  };
}
