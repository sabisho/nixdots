{
  inputs,
  pkgs,
  ...
}: {
  environment.systemPackages = with pkgs; [
    distrobox
    easyeffects
    gimp3
    gnome-disk-utility
    brave
    inputs.zen-browser.packages."${pkgs.stdenv.hostPlatform.system}".default
    meld
    mission-center
    picard
    songrec
    qbittorrent
    zed-editor
    libreoffice-fresh
    papers
    pavucontrol
    # Remove these for home manager theming
    nwg-look
    kdePackages.qt6ct
    libsForQt5.qt5ct
  ];
  programs = {
    localsend.enable = true;
    thunar = {
      enable = true;
      plugins = with pkgs.xfce; [
        thunar-archive-plugin
        thunar-volman
      ];
    };
  };
  services.tumbler.enable = true;
}
