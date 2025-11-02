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
    papirus-icon-theme
    adwaita-qt
  ];
  fonts.fontconfig.enable = true;
}
