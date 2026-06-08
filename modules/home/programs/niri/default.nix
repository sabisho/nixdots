{pkgs, ...}: {
  xdg.configFile.niri = {
    source = ./configs;
    recursive = true;
  };

  home.packages = with pkgs; [
    brightnessctl
    libnotify
    wl-clipboard
    wlsunset
    xwayland-satellite
  ];
}
