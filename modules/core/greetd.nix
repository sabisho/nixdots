{
  inputs,
  pkgs,
  ...
}: {
  services.displayManager.noctalia-greeter = {
    enable = true;
    # greeter-args = "--session niri";
    settings = {
      cursor = {
        theme = "Adwaita";
        size = 24;
        # path = "${pkgs.bibata-cursors}/share/icons";
      };
      keyboard = {
        layout = "us";
      };
      output = {
        scale = 1.0;
      };
    };
  };

  # polkit is required for the Noctalia v5 → greeter sync to work
  security.polkit.enable = true;
}
