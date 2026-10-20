{
  inputs,
  pkgs,
  ...
}: {
  # programs.niri = {
  #   enable = true;
  # };

  imports = [inputs.umbriel.nixosModules.default];

  programs.umbriel.enable = true;

  xdg.portal = {
    enable = true;
    extraPortals = with pkgs; [
      # xdg-desktop-portal-gnome
      xdg-desktop-portal-gtk
    ];
  };
}
