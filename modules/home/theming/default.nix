{
  config,
  pkgs,
  ...
}: {
  imports = [
    ./gtk.nix
    ./qt.nix
  ];

  home.packages = with pkgs; [
    gnome-themes-extra
    adwaita-qt
  ];
  fonts.fontconfig.enable = true;
}
