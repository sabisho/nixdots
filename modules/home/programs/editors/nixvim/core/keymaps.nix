{
  programs.nixvim = {
    keymaps = [
      {
        key = "<leader>q";
        mode = "n";
        action = ":q!<CR>";
        options = {
          silent = true;
          desc = "Quit without saving";
        };
      }
      # fff: find files in current repo
      {
        key = "<leader>f";
        mode = "n";
        action = "<cmd>lua require('fff').find_files()<CR>";
        options = {
          silent = true;
          desc = "Find Files";
        };
      }
      # No fff equivalent — fff is files-only, no explorer
      {
        key = "<leader>e";
        mode = "n";
        action = "<cmd>lua Snacks.explorer()<CR>";
        options = {
          silent = true;
          desc = "File Explorer";
        };
      }
      # No fff equivalent — fff has no buffer picker
      {
        key = "<leader>b";
        mode = "n";
        action = "<cmd>lua Snacks.picker.buffers()<CR>";
        options = {
          silent = true;
          desc = "Find Buffers";
        };
      }
      # fff: live grep
      {
        key = "<leader>/";
        mode = "n";
        action = "<cmd>lua require('fff').live_grep()<CR>";
        options = {
          silent = true;
          desc = "Grep";
        };
      }
      {
        key = "<leader>r";
        mode = "n";
        action = "<cmd>lua vim.lsp.buf.rename()<CR>";
        options = {
          silent = true;
          desc = "LSP Rename (Symbol)";
        };
      }
      {
        key = "<Tab>";
        mode = "n";
        action = ":bprev<CR>";
        options = {
          silent = true;
          desc = "Previous Buffer";
        };
      }
      {
        key = "<S-Tab>";
        mode = "n";
        action = ":bnext<CR>";
        options = {
          silent = true;
          desc = "Next Buffer";
        };
      }
      # fff: find files scoped to ~/nixdots
      {
        key = "<leader>c";
        mode = "n";
        action = "<cmd>lua require('fff').find_files_in_dir(vim.fn.expand('~/nixdots'))<CR>";
        options = {
          silent = true;
          desc = "Open NixOS Configs";
        };
      }
    ];
  };
}
