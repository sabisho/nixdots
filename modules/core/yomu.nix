{
  inputs,
  pkgs,
  ...
}: {
  nixpkgs.overlays = [inputs.yomu.overlays.default];
  environment.systemPackages = [pkgs.yomu]; # or home.packages with Home Manager
}
