{
  programs.kitty = {
    font = {
      name = "Maple Mono NF";
      size = 16;
    };
    settings = {
      cursor_trail = 1;
      cursor_trail_start_threshold = 0;
      cursor_trail_decay = "0.01 0.5";
      background_opacity = 0.5;
      background_blur = 1;
    };
    # themeFile = "gruvbox-dark-hard";
    extraConfig = ''
      include themes/noctalia.conf
      pixel_scroll yes
    '';
  };
}
