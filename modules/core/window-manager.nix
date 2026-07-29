{pkgs, ...}: {
  programs.niri = {
    enable = true;
  };

  nixpkgs.overlays = [
    (self: super: {
      libdisplay-info = super.libdisplay-info.overrideAttrs {
        version = "0.3.0";
        src = super.fetchFromGitLab {
          domain = "gitlab.freedesktop.org";
          owner = "emersion";
          repo = "libdisplay-info";
          rev = "0.3.0";
          sha256 = "sha256-nXf2KGovNKvcchlHlzKBkAOeySMJXgxMpbi5z9gLrdc=";
        };
      };
    })
  ];

  xdg.portal = {
    enable = true;
    extraPortals = with pkgs; [
      xdg-desktop-portal-gnome
      xdg-desktop-portal-gtk
    ];
  };
}
