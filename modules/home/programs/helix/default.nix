{
  config,
  pkgs,
  ...
}: {
  imports = [
    ./config.nix
    ./languages.nix
  ];

  programs.helix = {
    enable = true;
  };
}
