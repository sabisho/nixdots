{
  pkgs,
  username,
  ...
}: {
  services = {
    jellyfin = {
      enable = true;
      user = username;
      group = "users";
      openFirewall = true;
      # webinterface at: localhost:8096
    };
    # komga = {
    #   enable = true;
    #   user = username;
    #   group = "users";
    #   openFirewall = true;
    #   settings.server.port = 8080;
    #   # webinterface at: localhost:8080
    # };
  };

  # users.users.komga.extraGroups = [username];

  # environment.systemPackages = with pkgs; [
  #   mkvtoolnix
  # ];
}
