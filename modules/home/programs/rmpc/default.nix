{
  programs.rmpc = {
    enable = true;
  };
  xdg.configFile.rmpc = {
    source = ./configs;
    recursive = true;
  };
}
