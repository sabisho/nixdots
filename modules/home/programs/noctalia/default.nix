{
  config,
  inputs,
  ...
}: {
  services = {
  cliphist.enable = true;
  };

  programs.noctalia = {
    enable = true;
  };

  xdg.configFile."noctalia/noctalia-config.toml" = {
    source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/nixdots/modules/home/programs/noctalia/configs/noctalia-config.toml";
  };
}
