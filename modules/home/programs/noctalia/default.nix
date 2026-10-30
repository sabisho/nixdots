{
  config,
  inputs,
  ...
}: {
  imports = [
    ./config.nix
  ];

  services = {
    cliphist.enable = true;
  };

  programs.noctalia = {
    enable = true;
  };

  xdg.configFile."noctalia/templates/yomu-theme.toml.template" = {
    source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/nixdots/modules/home/programs/noctalia/templates/yomu-theme.toml.template";
  };
}
