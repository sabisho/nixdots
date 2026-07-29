{
  config,
  pkgs,
  ...
}: {
  xdg.configFile."niri".source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/nixdots/modules/home/programs/niri/configs";

  home.packages = with pkgs; [
    brightnessctl
    libnotify
    wl-clipboard
    wlsunset
    xwayland-satellite
  ];
}
