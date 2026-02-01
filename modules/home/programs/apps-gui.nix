{pkgs, ...}: {
  home.packages = with pkgs; [
    android-studio
    # brave
    file-roller
    gimp3
    gnome-disk-utility
    jflap
    mission-center
    obs-studio
    onlyoffice-desktopeditors
    papers
    pavucontrol
    picard
    qalculate-gtk
    qbittorrent
    readest
    rnote
    songrec
    zed-editor
  ];
}
