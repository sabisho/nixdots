{
  programs.fuzzel = {
    settings = {
      main = {
        layer = "overlay";
      };
    };
  };
  xdg.configFile.fuzzel = {
    source = ./scripts;
    recursive = true;
  };
}
