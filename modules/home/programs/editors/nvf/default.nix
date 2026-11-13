{
  inputs,
  pkgs,
  ...
}: {
  imports = [
    inputs.nvf.homeManagerModules.default
    ./core
    ./plugins
  ];

  home.packages = with pkgs; [
    imagemagick # Required by Snacks.nvim
    trash-cli # Required by Snacks.nvim
  ];

  programs.nvf = {
    enable = true;
    defaultEditor = true;
    settings.vim = {
      viAlias = true;
      vimAlias = true;
    };
  };
}
