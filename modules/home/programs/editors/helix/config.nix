{
  programs.helix = {
    settings = {
      theme = "gruvbox-transparent";

      editor = {
        rainbow-brackets = true;
        line-number = "relative";
        mouse = false;
        color-modes = true;
        bufferline = "multiple";
        popup-border = "all";
        cursorline = true;
        end-of-line-diagnostics = "hint";

        indent-guides = {
          render = true;
        };

        soft-wrap = {
          enable = true;
        };

        lsp = {
          display-inlay-hints = true;
        };

        cursor-shape = {
          insert = "bar";
          normal = "block";
          select = "underline";
        };

        statusline = {
          left = ["mode" "file-name" "file-modification-indicator"];
          center = ["spinner" "file-type"];
          right = ["diagnostics" "selections" "position" "file-encoding" "file-line-ending"];
          separator = "│";

          mode = {
            normal = "NORMAL";
            insert = "INSERT";
            select = "SELECT";
          };
        };

        # Show hidden files by defualt, can be cpu intensive on nixos as there are many hidden files.
        # file-picker = {
        #   hidden = true;
        # };

        inline-diagnostics = {
          cursor-line = "warning";
        };
      };

      keys = {
        insert = {
          "C-[" = "normal_mode";
        };

        normal = {
          ret = "goto_word";
          space = {
            n = ":open ~/nixdots";
          };
          "[" = {
            # Sort in ascending order.
            # We can also use the | or pipe command of helix to pipe the selction to sort command of the coreutils, but this method add unecessary blank lines around the selection.
            s = "@mim<A-s><A-,>(<A-,>:sort -i<ret>,;mm";
            # Add line numbering in the beggining of the line by hightlighting a block of text.
            n = "@<A-s>I<C-r>#.<space><esc>";
          };
          # Sort in descending order.
          "]" = {
            s = "@mim<A-s><A-,>(<A-,>:sort -i -r<ret>,;mm";
          };
        };
      };
    };

    themes = {
      noctalia-transparent = {
        inherits = "noctalia";
        "ui.background" = {};
        "ui.popup" = {};
        "ui.completion" = {};
        "ui.menu" = {};
        "ui.help" = {};
      };

      gruvbox-transparent = {
        inherits = "gruvbox_dark_hard";
        "ui.background" = {};
        "ui.popup" = {};
        "ui.completion" = {};
        "ui.menu" = {};
        "ui.help" = {};
      };
    };
  };
}
