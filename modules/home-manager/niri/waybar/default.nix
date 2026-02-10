# modules/home-manager/niri/waybar/default.nix

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
  home.packages = with pkgs; [
    pavucontrol
    nerd-fonts.jetbrains-mono
    networkmanagerapplet
  ];

  xdg.configFile."waybar/config".source =
    config.lib.file.mkOutOfStoreSymlink "${dotfilesDir}/modules/home-manager/niri/waybar/config";

  xdg.configFile."waybar/style.css".source =
    config.lib.file.mkOutOfStoreSymlink "${dotfilesDir}/modules/home-manager/niri/waybar/style.css";

  programs.waybar = {
    enable = true;
  };
}
