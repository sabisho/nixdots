{
  pkgs,
  username,
  ...
}: {
  services = {
    jellyfin = {
      enable = true;
      openFirewall = true;
      user = "jellyfin";
      group = "jellyfin";
      # webinterface at: localhost:8096
    };
    # kavita = {
    #   enable = true;
    #   # webinterface at: localhost:5000
    # };
  };
  environment.systemPackages = with pkgs; [
    mkvtoolnix
  ];
  # Setup files system for read-only access to media
  fileSystems."/srv/anime" = {
    device = "/home/${username}/Downloads/Torrents/Anime";
    fsType = "none";
    options = ["bind" "ro"];
  };

  fileSystems."/srv/comics" = {
    device = "/home/${username}/Downloads/Torrents/Comics";
    fsType = "none";
    options = ["bind" "ro"];
  };

  fileSystems."/srv/tv" = {
    device = "/home/${username}/Downloads/Torrents/TV";
    fsType = "none";
    options = ["bind" "ro"];
  };

  fileSystems."/srv/movies" = {
    device = "/home/${username}/Downloads/Torrents/Movies";
    fsType = "none";
    options = ["bind" "ro"];
  };
}
