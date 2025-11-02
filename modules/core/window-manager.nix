{pkgs, ...}: {
  # programs.hyprland.enable = true;
  programs.niri.enable = true;
  # services.displayManager.gdm.enable = true;
  xdg.portal = {
    enable = true;
    extraPortals = with pkgs; [
      xdg-desktop-portal-gtk
      xdg-desktop-portal-gnome
    ];
  };
}
