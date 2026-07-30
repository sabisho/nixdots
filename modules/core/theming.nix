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

  # onlyoffice has trouble with symlinks: https://github.com/ONLYOFFICE/DocumentServer/issues/1859
  system.userActivationScripts = {
    copy-fonts-local-share = {
      text = ''
        rm -rf ~/.local/share/fonts
        mkdir -p ~/.local/share/fonts
        cp ${pkgs.corefonts}/share/fonts/truetype/* ~/.local/share/fonts/
        chmod 544 ~/.local/share/fonts
        chmod 444 ~/.local/share/fonts/*
      '';
    };
  };

  # Stylix: Removes these when using stylix theming.
  environment.systemPackages = with pkgs; [
    adw-gtk3
    adwaita-icon-theme
    papirus-icon-theme
  ];
}
