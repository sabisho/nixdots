{pkgs, ...}: {
  imports = [
    ./config.nix
    ../hypr/hyprlock.nix
    ./hypridle_for_niri.nix
  ];
  home.packages = with pkgs; [
    sunsetr
    brightnessctl
    libnotify
    mako
    polkit_gnome
    swww
    waypaper
    wl-clipboard
    xwayland-satellite
  ];
}
