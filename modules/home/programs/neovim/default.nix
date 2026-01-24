{inputs, ...}: {
  imports = [
    inputs.nixvim.homeModules.nixvim
    ./colorscheme.nix
    ./core.nix
    ./keymaps.nix
    ./plugins.nix
  ];
  programs.nixvim = {
    enable = true;
  };
}
