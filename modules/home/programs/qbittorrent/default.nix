{
  config,
  pkgs,
  ...
}: {
  home.packages = with pkgs; [
    qbittorrent
  ];

  xdg.configFile."qBittorrent/qBittorrent.conf" = {
    source = config.lib.file.mkOutOfStoreSymlink "./config/qBittorrent.conf";
  };
}
