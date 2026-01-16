{pkgs, ...}: {
  programs.niri.enable = true;
  # programs.hyprland.enable = true;

  xdg.portal = {
    enable = true;
    extraPortals = with pkgs; [
      xdg-desktop-portal-gnome
      # xdg-desktop-portal-hyprland
      # xdg-desktop-portal-gtk
    ];
  };
}
