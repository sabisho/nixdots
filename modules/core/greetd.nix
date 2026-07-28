{
  inputs,
  pkgs,
  ...
}: {
  imports = [
    inputs.noctalia-greeter.nixosModules.default
  ];

  programs.noctalia-greeter = {
    enable = true;
    package = inputs.noctalia-greeter.packages.${pkgs.stdenv.hostPlatform.system}.default;
    greeter-args = "--session niri";
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
