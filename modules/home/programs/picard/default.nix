{pkgs, ...}: {
  home.packages = with pkgs; [
    picard
  ];
#  xdg.configFile.MusicBrainz = {
 #   source = ./Picard.ini;
 # };
}
