{pkgs, ...}: {
  home.packages = with pkgs; [
    brave
    drawy
    file-roller
    gimp3
    gnome-disk-utility
    mission-center
    # motrix-next
    # komelia
    obs-studio
    onlyoffice-desktopeditors
    papers
    protonplus
    pwvucontrol
    qalculate-gtk
    qbittorrent
    shipwright
    songrec
    thunderbird
    yacreader
    zed-editor
  ];
}
