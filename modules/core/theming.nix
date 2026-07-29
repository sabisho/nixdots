{pkgs, ...}: {
  fonts.packages = with pkgs; [
    adwaita-fonts
    corefonts
    ibm-plex
    liberation_ttf
    maple-mono.NF
    miracode
    nerd-fonts.iosevka
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
    papirus-icon-theme
  ];
}
