{pkgs, ...}: {
  home.packages = with pkgs; [
    brave
    drawy
    file-roller
    gimp3
    gnome-disk-utility
    mission-center
    obs-studio
    # onlyoffice-desktopeditors
    collabora-desktop
    papers
    pwvucontrol
    protonplus
    qalculate-gtk
    qbittorrent
    songrec
    thunderbird
    yacreader
    zed-editor
  ];
}
