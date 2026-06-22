{
  pkgs,
  lib,
  config,
  ...
}: {
  # https://devenv.sh/languages/
  languages.python = {
    enable = true;
    venv.enable = true;
  };

  # https://devenv.sh/packages/
  packages = with pkgs; [
    pyrefly
    ruff
    fish
  ];

  # https://devenv.sh/basics/
  enterShell = ''
    exec ${pkgs.fish}/bin/fish
  '';

  # See full reference at https://devenv.sh/reference/options/
}
