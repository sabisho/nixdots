{hostname, ...}: {
  networking = {
    hostName = hostname;
    networkmanager = {
      enable = true;
      # dns = "default"; # add none so that network manager doesn't use DHCP dns.
    };
    # nameservers = ["1.1.1.1" "1.0.0.1"];
    firewall = {
      enable = true;
    };
  };
  services.resolved.enable = true; # Use systemd resolver for DNS requests. Fixes slow steam downloads.
  programs.sniffnet.enable = true;
}
