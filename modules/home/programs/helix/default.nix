{
  imports = [
    ./config.nix
    ./languages.nix
    ./lsp.nix
  ];

  programs.helix = {
    enable = true;
  };
}
