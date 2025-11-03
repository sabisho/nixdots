{
  services.mpd = {
    enable = true;
  };
  imports = [
    ./config.nix
    ./rmpc.nix
  ];
}
