{pkgs, ...}: {
  home.packages = with pkgs; [
    brave
    collabora-desktop
    drawy
    file-roller
    gimp3
    gnome-disk-utility
    mission-center
    # motrix-next
    obs-studio
    # onlyoffice-desktopeditors
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
