{hostname, ...}: {
  networking = {
    hostName = hostname;
    networkmanager = {
      enable = true;
      dns = "default"; # add none so that network manager doesn't use DHCP dns.
    };
    # nameservers = ["1.1.1.1" "1.0.0.1"];
    firewall = {
      enable = true;
    };
  };
  programs.sniffnet.enable = true;
}
