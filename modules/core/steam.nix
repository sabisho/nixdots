{pkgs, ...}: {
  programs.steam = {
    enable = true;
    extraPackages = with pkgs; [
      apple-cursor
    ];
  };
}
