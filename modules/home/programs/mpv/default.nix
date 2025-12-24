{pkgs, ...}: {
  programs.mpv = {
    enable = true;
    scripts = with pkgs; [
      mpvScripts.uosc
      mpvScripts.thumbfast
      mpvScripts.sponsorblock-minimal
    ];
  };

  imports = [
    ./config.nix
  ];
}
