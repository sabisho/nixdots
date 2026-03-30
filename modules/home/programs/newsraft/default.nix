{pkgs, ...}: {
  home.packages = with pkgs; [
    newsraft
  ];
  xdg.configFile.newsraft = {
    source = ./configs;
    recursive = true;
  };
}
