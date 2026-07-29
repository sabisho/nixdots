{pkgs, ...}: {
  home.packages = with pkgs; [
    qbittorrent
  ];

  xdg.configFile."qBittorrent/qBittorrent.conf" = {
    source = ./config/qBittorrent.conf;
  };
}
