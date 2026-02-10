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
  home.packages = with pkgs; [
    pavucontrol
    nerd-fonts.jetbrains-mono
    pamixer
  ];

  xdg.configFile."waybar/config".source =
    config.lib.file.mkOutOfStoreSymlink "${dotfilesDir}/modules/home-manager/hypr/waybar/config";

  xdg.configFile."waybar/style.css".source =
    config.lib.file.mkOutOfStoreSymlink "${dotfilesDir}/modules/home-manager/hypr/waybar/style.css";

  xdg.configFile."waybar/scripts/wifimenu".source =
    config.lib.file.mkOutOfStoreSymlink "${dotfilesDir}/modules/home-manager/hypr/waybar/scripts/wifimenu";

  xdg.configFile."waybar/scripts/bluetooth-menu".source =
    config.lib.file.mkOutOfStoreSymlink "${dotfilesDir}/modules/home-manager/hypr/waybar/scripts/bluetooth-menu";

  programs.waybar = {
    enable = true;
    systemd.enable = true;
  };
}
