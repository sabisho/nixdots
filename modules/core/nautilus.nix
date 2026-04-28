{pkgs, ...}: {
  environment.systemPackages = with pkgs; [
    nautilus
    unrar
    ffmpegthumbnailer
  ];
}
