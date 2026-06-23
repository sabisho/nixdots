{
  config,
  lib,
  ...
}: {
  services.komga = {
    enable = true;

    # Default port is 8080; change if you want
    settings.server.port = 8080;

    # Opens the firewall for the above port
    openFirewall = true; # set true if you want LAN access without nginx
  };
}
