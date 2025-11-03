{pkgs, ...}: {
  environment.systemPackages = with pkgs; [
    bibata-cursors
    banana-cursor
    papirus-icon-theme
    gnome-themes-extra
    adwaita-qt
  ];
}
