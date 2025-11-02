{pkgs, ...}: {
  gtk = {
    enable = true;
    theme.name = "Adwaita-dark";
    iconTheme.name = "Papirus-Dark";
    font.name = "Noto Sans 11";
  };
}
