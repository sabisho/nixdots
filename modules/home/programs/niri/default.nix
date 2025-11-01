{
  config,
  pkgs,
  ...
}: {
  imports = [
    ./niri-pkgs.nix
    ./niri-conf.nix
  ];

  programs.waybar = {
    enable = true;
  };
}
