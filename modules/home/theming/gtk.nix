{pkgs, ...}: {
  gtk = {
    enable = true;
    colorScheme = "dark";
    iconTheme = {
      name = "Papirus-Dark";
    };
    cursorTheme = {
      name = "Bibata-Modern-Ice";
      size = 24;
    };
    font = {
      name = "Adwaita Sans Regular";
      size = 11;
    };
  };
}
