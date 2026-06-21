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
          # This keymap sorts the objects inside any maching pair.
          "]" = {
            s = "@mim<A-s><A-,>(<A-,>:sort<ret>,;mm";
            S = "@mim<A-s><A-,>(<A-,>:sort -r<ret>,;mm";
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
