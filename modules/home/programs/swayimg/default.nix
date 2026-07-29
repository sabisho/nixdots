{
  programs.swayimg = {
    enable = true;
  };

  xdg.configFile."swayimg/init.lua".text = ''
    swayimg.imagelist.adjacent = false
  '';
}
