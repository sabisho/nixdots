{pkgs, ...}: {
  home.packages = with pkgs; [
    bat
    caligula
    charm-freeze
    cmd-wrapped
    devenv
    dysk
    eza
    fd
    figlet
    glow
    impala
    onefetch
    pastel
    ripgrep
    rqbit
    tealdeer
    tukai
    wget
    wiremix
    yazi
    yt-dlp
  ];
}
