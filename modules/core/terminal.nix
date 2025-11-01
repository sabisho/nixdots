{pkgs, ...}: {
  environment.systemPackages = with pkgs; [
    ghostty
    fd
    dysk
    eza
    yazi
    bat
    fastfetch
    git
    newsraft
    ripgrep
    wget
    yt-dlp
    btop
    figlet
  ];
}
