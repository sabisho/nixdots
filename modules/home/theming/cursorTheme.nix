{pkgs, ...}: {
  home.pointerCursor = {
    package = pkgs.apple-cursor;
    # name = "Bibata-Modern-Ice";
    name = "macOS";
    size = 24;
    gtk.enable = true;
    hyprcursor.enable = true;
  };
}
