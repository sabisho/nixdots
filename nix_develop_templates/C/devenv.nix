{
  pkgs,
  lib,
  config,
  ...
}: {
  # C language support
  languages.c.enable = true;

  # Add fish shell
  packages = [pkgs.fish];

  # Set fish as the default shell for the devenv
  env.SHELL = "${pkgs.fish}/bin/fish";

  # Optional: Automatically start fish upon entering the shell
  enterShell = ''
    exec fish
  '';
}
