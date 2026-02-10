# modules/home-manager/niri/alacritty.nix

{
  inputs,
  outputs,
  pkgs,
  config,
  ...
}:
{
  programs.alacritty = {
    enable = true;
    theme = "catppuccin_mocha";
  };
}
