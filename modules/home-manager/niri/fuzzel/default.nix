# modules/home-manager/niri/fuzzel/default.nix

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
  xdg.configFile."fuzzel/fuzzel.ini".source =
    config.lib.file.mkOutOfStoreSymlink "${dotfilesDir}/modules/home-manager/niri/fuzzel/fuzzel.ini";
}
