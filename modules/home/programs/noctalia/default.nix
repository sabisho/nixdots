{
  config,
  inputs,
  ...
}: {
  # NOTE: Add flake input for noctalia from github to access these features.
  imports = [
    inputs.noctalia.homeModules.default
  ];

  services.cliphist.enable = true;

  # This is configured by noctalia flake.
  programs.noctalia = {
    enable = true;
  };

  xdg.configFile."noctalia/noctalia-config.toml" = {
    source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/nixdots/modules/home/programs/noctalia/configs/noctalia-config.toml";
  };
}
