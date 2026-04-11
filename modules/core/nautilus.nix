{pkgs, ...}: {
  environment.systemPackages = with pkgs; [
    nautilus
    ffmpegthumbnailer
  ];
}
