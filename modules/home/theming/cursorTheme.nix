{pkgs, ...}: {
  home.pointerCursor = {
    # name = "Bibata-Modern-Ice";
    name = "Adwaita";
    package = pkgs.adwaita-icon-theme;
    size = 24;
    gtk.enable = true;
  };
}
