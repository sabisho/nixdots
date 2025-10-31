{
  config,
  pkgs,
  inputs,
  username,
  hostname,
  ...
}: {
  imports = [
    ./hardware-configuration.nix
    ./modules/boot.nix
    ./modules/pipewire.nix
    ./modules/nixgc.nix
    ./modules/locale.nix
    ./modules/gaming.nix
    ./modules/fonts.nix
    ./modules/editor.nix
    ./modules/bluetooth.nix
    ./modules/nvidia.nix
    ./modules/razer.nix
    ./modules/window-manager.nix
  ];

  nix.settings.experimental-features = ["nix-command" "flakes"];

  networking.hostName = hostname; # Define your hostname.
  # Enable networking
  networking.networkmanager.enable = true;

  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.${username} = {
    isNormalUser = true;
    description = "Klynt";
    extraGroups = ["networkmanager" "wheel"];
    shell = pkgs.fish;
    home = "/home/${username}";
    packages = with pkgs; [];
  };

  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;

  # Laptop Power Management
  services.thermald.enable = true;

  services.auto-cpufreq = {
    enable = true;
    settings = {
      battery = {
        governor = "powersave";
        turbo = "never";
      };
      charger = {
        governor = "performance";
        turbo = "auto";
      };
    };
  };

  programs.fish.enable = true;

  environment.systemPackages = with pkgs; [
    apple-cursor
    atuin
    bat
    cava
    distrobox
    eza
    fastfetch
    fd
    gimp3
    git
    gnome-disk-utility
    inputs.zen-browser.packages."${system}".default
    meld
    mission-center
    mpv
    newsraft
    picard
    qbittorrent
    rewaita
    ripgrep
    rmpc
    starship
    wget
    yazi
    yt-dlp
    zoxide
  ];

  services.xserver.videoDrivers = ["nvidia"];
  hardware.graphics = {
    enable = true;
    enable32Bit = true;
    extraPackages = with pkgs; [
      # For modern Intel CPU's
      intel-media-driver # Enable Hardware Acceleration
      vpl-gpu-rt # Enable QSV
    ];
  };
  environment.sessionVariables = {LIBVA_DRIVER_NAME = "iHD";};

  services.gvfs.enable = true;

  services.gnome.gnome-keyring.enable = true;
  # MPD
  services.mpd = {
    enable = true;
    musicDirectory = "/home/${username}/Music";
    extraConfig = ''
      audio_output {
        type "pipewire"
        name "My PipeWire Output"
      }
    '';
    user = "${username}";
    # Optional:
    network.listenAddress = "any"; # if you want to allow non-localhost connections
    startWhenNeeded = true; # systemd feature: only start MPD service upon connection to its socket
  };
  systemd.services.mpd.environment = {
    # https://gitlab.freedesktop.org/pipewire/pipewire/-/issues/609
    XDG_RUNTIME_DIR = "/run/user/1000"; # User-id 1000 must match above user. MPD will look inside this directory for the PipeWire socket.
  };

  # Virtualization
  programs.virt-manager.enable = true;

  virtualisation.libvirtd.enable = true;

  users.groups.libvirtd.members = ["${username}"];

  virtualisation.podman = {
    enable = true;
    dockerCompat = true;
  };

  networking.firewall.enable = true;

  system.stateVersion = "25.05"; # Did you read the comment?
}
