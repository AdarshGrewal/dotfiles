# modules/home-manager/hypr/waybar/default.nix

{
  inputs,
  outputs,
  pkgs,
  config,
  ...
}:
let
  dotfilesDir = "${config.home.homeDirectory}/.dotfiles";
in
{
  xdg.configFile."hypr/hyprland.conf".source =
    config.lib.file.mkOutOfStoreSymlink "${dotfilesDir}/modules/home-manager/hypr/hyprland/hyprland.conf";

  wayland.windowManager.hyprland = {
    enable = true;
  };
}
