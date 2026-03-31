{pkgs, ...}: {
  services.greetd = {
    enable = true;
    settings = {
      default_session = {
        user = "greeter";
        # Start Niri with a TUI login manager
        command = "${pkgs.tuigreet}/bin/tuigreet --time --remember --cmd niri-session";
        # Start Hyprland with a TUI login manager
        # command = "${pkgs.tuigreet}/bin/tuigreet --time --remember --cmd start-hyprland";
      };
    };
  };
}
