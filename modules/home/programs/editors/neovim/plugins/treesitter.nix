{pkgs, ...}: {
  programs.nixvim = {
    plugins = {
      treesitter = {
        enable = true;
        grammarPackages = with pkgs.vimPlugins.nvim-treesitter.builtGrammars; [
          bash
          c
          cpp
          json
          kdl
          lua
          make
          markdown
          nix
          python
          regex
          rust
          toml
          typst
          vim
          vimdoc
          xml
          yaml
        ];
      };
    };
  };
}
