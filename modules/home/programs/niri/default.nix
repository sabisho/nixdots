{pkgs, ...}: {
  xdg.configFile.niri = {
    source = ./configs;
    recursive = true;
  };

  home.packages = with pkgs; [
    brightnessctl
    libnotify
    polkit_gnome
    wl-clipboard
    wlsunset
    xwayland-satellite
  ];
}
