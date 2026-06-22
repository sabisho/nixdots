{
  pkgs,
  lib,
  config,
  ...
}: {
  # https://devenv.sh/languages/
  languages.rust.enable = true;

  # https://devenv.sh/packages/
  packages = [
    pkgs.fish
  ];

  # Set fish as the shell
  enterShell = ''
    exec ${pkgs.fish}/bin/fish
  '';

  # See full reference at https://devenv.sh/reference/options/
}
