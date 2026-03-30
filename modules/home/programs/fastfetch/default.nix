{
  imports = [
    ./config.nix
  ];

  programs.fastfetch.enable = true;

  # Copy the images directory to ~/.config/fastfetch/images
  xdg.configFile.fastfetch = {
    source = ./images;
    recursive = true;
  };
}
