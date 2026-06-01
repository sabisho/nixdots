{
  imports = [
    ./hardware-configuration.nix
    ../../../modules/core
    ./laptop-power-management.nix
    ../../../modules/drivers/open-razer.nix
  ];
}
