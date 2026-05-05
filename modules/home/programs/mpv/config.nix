{
  programs.mpv = {
    config = {
      vo = "gpu-next";
      gpu-api = "vulkan";
      # vulkan-device = "Intel(R) UHD Graphics (CML GT2)"; # To See Device Name: vulkaninfo | grep deviceName
      hwdec = "vulkan";
      profile = "gpu-hq";
      fs = "yes";
      sub-auto = "fuzzy";
      slang = "eng,en,English,en-US,en-GB";
      save-position-on-quit = "yes";
    };
  };
}
