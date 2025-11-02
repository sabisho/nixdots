{pkgs, ...}: {
  environment.systemPackages = with pkgs; [
    fd
    dysk
    eza
    yazi
    bat
    newsraft
    ripgrep
    wget
    yt-dlp
    btop
    figlet
  ];
}
