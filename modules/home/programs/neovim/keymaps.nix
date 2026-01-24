{
  programs.nixvim = {
    keymaps = [
      # File Explorer
      {
        mode = "n";
        key = "\\";
        action.__raw = "function() Snacks.picker.explorer() end";
        options.desc = "Open File Explorer";
      }

      # Quick Access
      {
        mode = "n";
        key = "<leader>,";
        action.__raw = "function() Snacks.picker.buffers() end";
        options.desc = "Buffers";
      }
      {
        mode = "n";
        key = "<leader>/";
        action.__raw = "function() Snacks.picker.grep() end";
        options.desc = "Grep";
      }
      {
        mode = "n";
        key = "<leader>:";
        action.__raw = "function() Snacks.picker.command_history() end";
        options.desc = "Command History";
      }
      {
        mode = "n";
        key = "<leader><space>";
        action.__raw = "function() Snacks.picker.files() end";
        options.desc = "Find Files";
      }

      # Find
      {
        mode = "n";
        key = "<leader>fb";
        action.__raw = "function() Snacks.picker.buffers() end";
        options.desc = "Buffers";
      }
      {
        mode = "n";
        key = "<leader>fc";
        action.__raw = "function() Snacks.picker.files({ cwd = vim.fn.stdpath('config') }) end";
        options.desc = "Find Neovim Configs";
      }
      {
        mode = "n";
        key = "<leader>f.";
        action.__raw = "function() Snacks.picker.files({ cwd = vim.fn.expand('~/.config') }) end";
        options.desc = "Find Dotfiles";
      }
      {
        mode = "n";
        key = "<leader>ff";
        action.__raw = "function() Snacks.picker.files() end";
        options.desc = "Find Files";
      }
      {
        mode = "n";
        key = "<leader>fg";
        action.__raw = "function() Snacks.picker.git_files() end";
        options.desc = "Find Git Files";
      }
      {
        mode = "n";
        key = "<leader>fr";
        action.__raw = "function() Snacks.picker.recent() end";
        options.desc = "Recent";
      }

      # Git
      {
        mode = "n";
        key = "<leader>gc";
        action.__raw = "function() Snacks.picker.git_log() end";
        options.desc = "Git Log";
      }
      {
        mode = "n";
        key = "<leader>gs";
        action.__raw = "function() Snacks.picker.git_status() end";
        options.desc = "Git Status";
      }

      # Grep
      {
        mode = "n";
        key = "<leader>sb";
        action.__raw = "function() Snacks.picker.lines() end";
        options.desc = "Buffer Lines";
      }
      {
        mode = "n";
        key = "<leader>sB";
        action.__raw = "function() Snacks.picker.grep_buffers() end";
        options.desc = "Grep Open Buffers";
      }
      {
        mode = "n";
        key = "<leader>sg";
        action.__raw = "function() Snacks.picker.grep() end";
        options.desc = "Grep";
      }
      {
        mode = ["n" "x"];
        key = "<leader>sw";
        action.__raw = "function() Snacks.picker.grep_word() end";
        options.desc = "Visual selection or word";
      }

      # Search
      {
        mode = "n";
        key = ''<leader>s"'';
        action.__raw = "function() Snacks.picker.registers() end";
        options.desc = "Registers";
      }
      {
        mode = "n";
        key = "<leader>sa";
        action.__raw = "function() Snacks.picker.autocmds() end";
        options.desc = "Autocmds";
      }
      {
        mode = "n";
        key = "<leader>sc";
        action.__raw = "function() Snacks.picker.command_history() end";
        options.desc = "Command History";
      }
      {
        mode = "n";
        key = "<leader>sC";
        action.__raw = "function() Snacks.picker.commands() end";
        options.desc = "Commands";
      }
      {
        mode = "n";
        key = "<leader>sd";
        action.__raw = "function() Snacks.picker.diagnostics() end";
        options.desc = "Diagnostics";
      }
      {
        mode = "n";
        key = "<leader>sh";
        action.__raw = "function() Snacks.picker.help() end";
        options.desc = "Help Pages";
      }
      {
        mode = "n";
        key = "<leader>sH";
        action.__raw = "function() Snacks.picker.highlights() end";
        options.desc = "Highlights";
      }
      {
        mode = "n";
        key = "<leader>sj";
        action.__raw = "function() Snacks.picker.jumps() end";
        options.desc = "Jumps";
      }
      {
        mode = "n";
        key = "<leader>sk";
        action.__raw = "function() Snacks.picker.keymaps() end";
        options.desc = "Keymaps";
      }
      {
        mode = "n";
        key = "<leader>sl";
        action.__raw = "function() Snacks.picker.loclist() end";
        options.desc = "Location List";
      }
      {
        mode = "n";
        key = "<leader>sM";
        action.__raw = "function() Snacks.picker.man() end";
        options.desc = "Man Pages";
      }
      {
        mode = "n";
        key = "<leader>sm";
        action.__raw = "function() Snacks.picker.marks() end";
        options.desc = "Marks";
      }
      {
        mode = "n";
        key = "<leader>sR";
        action.__raw = "function() Snacks.picker.resume() end";
        options.desc = "Resume";
      }
      {
        mode = "n";
        key = "<leader>sq";
        action.__raw = "function() Snacks.picker.qflist() end";
        options.desc = "Quickfix List";
      }
      {
        mode = "n";
        key = "<leader>uC";
        action.__raw = "function() Snacks.picker.colorschemes() end";
        options.desc = "Colorschemes";
      }
      {
        mode = "n";
        key = "<leader>qp";
        action.__raw = "function() Snacks.picker.projects() end";
        options.desc = "Projects";
      }

      # LSP
      {
        mode = "n";
        key = "gd";
        action.__raw = "function() Snacks.picker.lsp_definitions() end";
        options.desc = "Goto Definition";
      }
      {
        mode = "n";
        key = "gr";
        action.__raw = "function() Snacks.picker.lsp_references() end";
        options = {
          desc = "References";
          nowait = true;
        };
      }
      {
        mode = "n";
        key = "gI";
        action.__raw = "function() Snacks.picker.lsp_implementations() end";
        options.desc = "Goto Implementation";
      }
      {
        mode = "n";
        key = "gy";
        action.__raw = "function() Snacks.picker.lsp_type_definitions() end";
        options.desc = "Goto T[y]pe Definition";
      }
      {
        mode = "n";
        key = "<leader>ss";
        action.__raw = "function() Snacks.picker.lsp_symbols() end";
        options.desc = "LSP Symbols";
      }
    ];
  };
}
