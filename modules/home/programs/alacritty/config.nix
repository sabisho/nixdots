{
  programs.alacritty = {
    settings = {
      general.import = ["~/.config/alacritty/themes/noctalia.toml"];
      window = {
        opacity = 0.5;
        blur = true;
      };
      font = {
        normal = {
          family = "Iosevka Nerd Font";
          style = "Regular";
        };
        bold = {
          family = "Iosevka Nerd Font";
          style = "Bold";
        };
        italic = {
          family = "Iosevka Nerd Font";
          style = "Italic";
        };
        bold_italic = {
          family = "Iosevka Nerd Font";
          style = "Bold Italic";
        };
        size = 16.0;
      };
    };
  };
}
