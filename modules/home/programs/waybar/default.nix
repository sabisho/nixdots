{
  imports = [
    ./config.nix
    ./waybar-modules.nix
    # Stylix: Comment out style.nix when using stylix.
    # ./style.nix
  ];

  programs.waybar = {
    enable = true;
    systemd = {
      enable = true;
      target = "graphical-session.target";
    };
  };
}
