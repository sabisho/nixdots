{pkgs, ...}: {
  programs.steam = {
    enable = true;
    protontricks.enable = true;
    extraPackages = with pkgs; [
      apple-cursor
    ];
  };
}
