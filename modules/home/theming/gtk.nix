{
  gtk = {
    enable = true;

    # Widgets / GTK Theme: adw-gtk3-dark
    theme = {
      name = "adw-gtk3-dark";
    };

    # Icon Theme: Papirus-Dark
    iconTheme = {
      name = "Papirus-Dark";
    };

    # Default Font: Adwaita Sans Regular 11
    font = {
      name = "Adwaita Sans";
      size = 11;
    };

    # Color scheme: Prefer dark
    gtk3.extraConfig = {
      gtk-application-prefer-dark-theme = 1;
    };
    gtk4.extraConfig = {
      gtk-application-prefer-dark-theme = 1;
    };
  };

  # Instructs GNOME/GTK apps via dconf/gsettings to prefer dark color scheme
  dconf.settings = {
    "org/gnome/desktop/interface" = {
      color-scheme = "prefer-dark";
    };
  };
}
