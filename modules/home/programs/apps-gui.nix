{pkgs, ...}: {
  home.packages = with pkgs; [
    # brave
    file-roller
    gimp3
    gnome-disk-utility
    # jflap
    # mission-center
    obs-studio
    onlyoffice-desktopeditors
    papers
    pavucontrol
    picard
    qalculate-gtk
    readest
    resources
    rnote
    songrec
    transmission_4-gtk
    zathura
    zed-editor
  ];
}
