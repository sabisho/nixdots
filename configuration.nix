{
  imports = [
    ./hardware-configuration.nix
    ./modules/applications.nix
    ./modules/bluetooth.nix
    ./modules/boot.nix
    ./modules/editor.nix
    ./modules/fonts.nix
    ./modules/gaming.nix
    ./modules/laptop-power-management.nix
    ./modules/locale.nix
    # ./modules/media-server.nix
    ./modules/mpd.nix
    ./modules/networking.nix
    ./modules/nixgc.nix
    ./modules/nvidia.nix
    ./modules/pipewire.nix
    ./modules/razer.nix
    ./modules/terminal.nix
    ./modules/user-account.nix
    ./modules/video-drivers.nix
    ./modules/virtualization.nix
    ./modules/window-manager.nix
  ];

  nix.settings.experimental-features = ["nix-command" "flakes"];

  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;

  services = {
    gvfs.enable = true;
    gnome.gnome-keyring.enable = true;
  };

  system.stateVersion = "25.05"; # Did you read the comment?
}
