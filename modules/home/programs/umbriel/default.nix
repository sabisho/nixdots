{
  inputs,
  pkgs,
  ...
}: {
  imports = [
    inputs.umbriel.homeModules.default
    ./config.nix
  ];

  programs.umbriel.enable = true;

  home.packages = with pkgs; [
    brightnessctl
    libnotify
    playerctl
    wl-clipboard
    wlsunset
  ];
}
