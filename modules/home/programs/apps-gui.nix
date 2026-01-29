{pkgs, ...}: {
  home.packages = with pkgs; [
    android-studio
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
    qbittorrent
    readest
    rnote
    songrec
    zed-editor
  ];
}
