{
  pkgs,
  ...
}: let
  mitos = pkgs.callPackage ./package.nix {};
in {
  imports = [
    ./config.nix
    ./languages.nix
  ];

  home.packages = [
    mitos
  ];
}
