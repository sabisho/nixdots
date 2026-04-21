{pkgs, ...}: {
  fonts.packages = with pkgs; [
    corefonts
    ibm-plex
    inter
    liberation_ttf
    miracode
    nerd-fonts.jetbrains-mono
    noto-fonts
    noto-fonts-cjk-sans
    noto-fonts-color-emoji
    vista-fonts
  ];

  # Stylix: Removes these when using stylix theming.
  environment.systemPackages = with pkgs; [
    adw-gtk3
    adwaita-icon-theme
    nwg-look
    papirus-icon-theme
    qt6Packages.qt6ct
  ];
}
