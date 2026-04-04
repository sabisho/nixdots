{
  programs.kitty = {
    font = {
      name = "JetBrainsMono Nerd Font";
      size = 16;
    };
    settings = {
      cursor_trail = 3;
      cursor_trail_start_threshold = 0;
      cursor_trail_decay = "0.1 0.4";
      background_opacity = 0.8;
    };
    # themeFile = "gruvbox-dark-hard";
    extraConfig = ''
      include themes/noctalia.conf
      pixel_scroll yes
    '';
  };
}
