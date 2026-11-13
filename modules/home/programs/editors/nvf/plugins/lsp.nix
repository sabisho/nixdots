{pkgs, ...}: {
  programs.nvf.settings.vim = {
    lsp = {
      enable = true;
      inlayHints.enable = true;
      formatOnSave = true;
      servers.rust-analyzer.settings."rust-analyzer".cargo.sysrootSrc = "";
    };

    languages = {
      enableTreesitter = true;
      enableFormat = true;
      enableExtraDiagnostics = true;

      nix = {
        enable = true;
        lsp.enable = true;
        lsp.servers = ["nixd"];
        format.enable = true;
        format.type = ["alejandra"];
        extraDiagnostics.enable = true;
      };

      lua = {
        enable = true;
        lsp.enable = true;
        lsp.servers = ["lua-language-server"];
        format.enable = true;
        format.type = ["stylua"];
        extensions.lazydev.enable = true;
      };

      rust = {
        enable = true;
        lsp.enable = true;
        lsp.servers = ["rust-analyzer"];
        format.enable = true;
        format.type = ["rustfmt"];
        extensions.crates-nvim.enable = true;
      };

      python = {
        enable = true;
        lsp.enable = true;
        lsp.servers = ["pyrefly"];
        format.enable = true;
        format.type = ["ruff"];
      };

      clang = {
        enable = true;
        lsp.enable = true;
        format.enable = true;
        format.type = ["clang-format"];
      };

      typst = {
        enable = true;
        lsp.enable = true;
        format.enable = true;
        format.type = ["typstyle"];
      };

      bash.enable = true;
      markdown.enable = true;
      toml.enable = true;
      yaml.enable = true;
      json.enable = true;
      xml.enable = true;
      zig.enable = true;
    };

    extraPackages = with pkgs; [
      ripgrep
      fd
    ];
  };
}
