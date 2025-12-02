{pkgs, ...}: {
  environment.systemPackages = with pkgs; [
    fd
    tealdeer
    dysk
    eza
    yazi
    bat
    ripgrep
    wget
    yt-dlp
    btop
    figlet
    tukai
  ];
}
