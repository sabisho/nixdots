{pkgs, ...}: {
  programs.nixvim = {
    plugins = {
      lsp = {
        enable = true;
        servers = {
          nixd.enable = true;
        };
      };
      treesitter = {
        enable = true;

        grammarPackages = with pkgs.vimPlugins.nvim-treesitter.builtGrammars; [
          bash
          json
          lua
          make
          markdown
          nix
          regex
          toml
          vim
          vimdoc
          xml
          yaml
          python
          rust
        ];
      };

      blink-cmp.enable = true;
      lualine.enable = true;
      which-key.enable = true;

      snacks = {
        enable = true;

        settings = {
          # Enable various snacks modules with default settings
          bigfile = {
            enabled = true;
          };

          dashboard = {
            enabled = true;
            sections = [
              {section = "header";}
              {
                section = "keys";
                gap = 1;
                padding = 1;
              }
              # { section = "lazy"; }
              # {section = "startup";}
            ];
          };

          explorer = {
            enabled = true;
          };

          indent = {
            enabled = true;
          };

          input = {
            enabled = true;
          };

          notifier = {
            enabled = true;
            timeout = 3000;
          };

          picker = {
            enabled = true;
          };

          quickfile = {
            enabled = true;
          };

          scope = {
            enabled = true;
          };

          scroll = {
            enabled = true;
          };

          statuscolumn = {
            enabled = true;
          };

          words = {
            enabled = true;
          };

          # Optional: Add styles customization
          styles = {
            notification = {
              # wo.wrap = true;  # Uncomment to wrap notifications
            };
          };
        };
      };
      noice = {
        enable = true;
        settings = {
          lsp.override = {
            "vim.lsp.util.convert_input_to_markdown_lines" = true;
            "vim.lsp.util.stylize_markdown" = true;
            "cmp.entry.get_documentation" = true;
          };
          presets = {
            bottom_search = true;
            command_palette = true;
            long_message_to_split = true;
            lsp_doc_border = true;
          };
        };
      };
    };
  };
}
