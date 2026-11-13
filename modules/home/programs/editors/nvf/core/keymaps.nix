{
  programs.nvf.settings.vim = {
    keymaps = [
      {
        key = "<leader>q";
        mode = "n";
        action = ":q!<CR>";
        silent = true;
        desc = "Quit without saving";
      }
      {
        key = "<leader>f";
        mode = "n";
        action = "<cmd>lua require('fff').find_files()<CR>";
        silent = true;
        desc = "Find Files";
      }
      {
        key = "<leader>e";
        mode = "n";
        action = "<cmd>lua Snacks.explorer()<CR>";
        silent = true;
        desc = "File Explorer";
      }
      {
        key = "<leader>b";
        mode = "n";
        action = "<cmd>lua Snacks.picker.buffers()<CR>";
        silent = true;
        desc = "Find Buffers";
      }
      {
        key = "<leader>/";
        mode = "n";
        action = "<cmd>lua require('fff').live_grep()<CR>";
        silent = true;
        desc = "Grep";
      }
      {
        key = "<leader>lg";
        mode = "n";
        action = "<cmd>lua Snacks.lazygit.open()<CR>";
        silent = true;
        desc = "Open Lazygit";
      }
      {
        key = "<Tab>";
        mode = "n";
        action = ":bprev<CR>";
        silent = true;
        desc = "Previous Buffer";
      }
      {
        key = "<S-Tab>";
        mode = "n";
        action = ":bnext<CR>";
        silent = true;
        desc = "Next Buffer";
      }
      {
        key = "<leader>c";
        mode = "n";
        action = "<cmd>lua require('fff').find_files_in_dir(vim.fn.expand('~/nixdots'))<CR>";
        silent = true;
        desc = "Open NixOS Configs";
      }
    ];
  };
}
