{pkgs, ...}: {
  environment.systemPackages = with pkgs; [
    bibata-cursors
    papirus-icon-theme
    gnome-themes-extra
    adwaita-qt
  ];
}
