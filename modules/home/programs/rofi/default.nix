{
  programs.rofi = {
    enable = true;
  };
  xdg.configFile.rofi = {
    source = ./configs;
    recursive = true;
  };
}
