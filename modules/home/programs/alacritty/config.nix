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
          family = "Maple Mono NF";
          style = "Regular";
        };
        bold = {
          family = "Maple Mono NF";
          style = "Bold";
        };
        italic = {
          family = "Maple Mono NF";
          style = "Italic";
        };
        bold_italic = {
          family = "Maple Mono NF";
          style = "Bold Italic";
        };
        size = 16.0;
      };
    };
  };
}
