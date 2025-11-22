{pkgs, ...}: {
  stylix = {
    enable = true;
    autoEnable = false;
    image = pkgs.fetchurl {
      url = "https://w.wallhaven.cc/full/9o/wallhaven-9oozpx.png";
      sha256 = "1gvjy4z4g0c4qiqky5lcxj62xd4y3zl4q6l4f3bxcv7hyg87zpbs";
    };
    polarity = "dark";
    cursor = {
      package = pkgs.bibata-cursors;
      name = "Bibata-Modern-Ice";
      size = 24;
    };
    iconTheme = {
      enable = true;
      package = pkgs.papirus-icon-theme;
      dark = "Papirus-Dark";
      light = "Papirus-Light";
    };
    targets = {
      gtk.enable = true;
      plymouth = {
        enable = false;
        # logo = pkgs.nixos-bgrt-plymouth;
      };
      nixos-icons.enable = true;
    };
    opacity = {
      applications = 1.0; # Applications (e.g., web browsers, if supported)
      terminal = 0.6; # Terminal emulators (Alacritty, Kitty, Foot, etc.)
      desktop = 0.6; # Desktop widgets/bars (e.g., Waybar)
      popups = 0.6; # Popups (e.g., Rofi, Dunst/Mako notifications)
    };
    fonts = {
      serif = {
        name = "IBM Plex Serif";
      };
      sansSerif = {
        name = "Inter";
      };
      monospace = {
        name = "JetBrainsMono Nerd Font";
      };
      emoji = {
        name = "Noto Color Emoji";
      };
      sizes = {
        applications = 11;
        desktop = 16;
        terminal = 16;
        popups = 12;
      };
    };
  };
}
