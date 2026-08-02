{pkgs, ...}: {
  home.packages = with pkgs; [
    brave-origin
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
    # shipwright
    songrec
    thunderbird
    yacreader
  ];
}
