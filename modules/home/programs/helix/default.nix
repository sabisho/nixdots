{
  pkgs,
  inputs,
  ...
}: {
  imports = [
    ./config.nix
    ./languages.nix
    ./lsp.nix
  ];

  programs.helix = {
    enable = true;
    package = inputs.helix.packages.${pkgs.system}.default;
  };
}
