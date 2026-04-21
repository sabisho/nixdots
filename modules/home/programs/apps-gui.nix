{pkgs, ...}: {
  home.packages = with pkgs; [
    brave
    file-roller
    gimp3
    gnome-disk-utility
    mission-center
    obs-studio
    onlyoffice-desktopeditors
    papers
    pavucontrol
    picard
    qalculate-gtk
    qbittorrent
    rnote
    songrec
    thunderbird
    yacreader
    zed-editor
  ];
}
