{
  username,
  stateVersion,
  ...
}: {
  nix.settings = {
    experimental-features = ["nix-command" "flakes"];
    extra-substituters = ["https://noctalia.cachix.org"];
    extra-trusted-public-keys = ["noctalia.cachix.org-1:pCOR47nnMEo5thcxNDtzWpOxNFQsBRglJzxWPp3dkU4="];
  };

  nixpkgs.config.allowUnfree = true;

  programs.nh = {
    enable = true;
    flake = "/home/${username}/nixdots";
    clean = {
      enable = true;
      dates = "weekly";
      extraArgs = "--keep-since 3d --optimise";
    };
  };

  zramSwap = {
    enable = true;
    priority = 100;
    algorithm = "zstd";
    memoryPercent = 100;
  };

  services = {
    fstrim.enable = true;
    fwupd.enable = true;
    gnome.gnome-keyring.enable = true;
    gvfs.enable = true;
    btrfs.autoScrub = {
      enable = true;
      interval = "weekly";
    };
  };

  system.stateVersion = stateVersion; # Did you read the comment?
}
