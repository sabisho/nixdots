{
  pkgs,
  username,
  ...
}: {
  services.jellyfin = {
    enable = true;
    user = username;
    group = "users";
    openFirewall = true;
    # webinterface at: localhost:8096
  };
  services.komga = {
    enable = true;
    user = username;
    group = "users";
    openFirewall = true;
    # webinterface at: localhost:25600
  };
  environment.systemPackages = with pkgs; [
    mkvtoolnix
  ];
}
