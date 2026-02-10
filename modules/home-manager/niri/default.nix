# modules/home-manager/niri/default.nix

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
  imports = [
    ./alacritty.nix
    ./fuzzel
    ./mako
    ./swaylock
    ./swayidle.nix
    ./waybar
  ];

  xdg.configFile."niri/config.kdl".source =
    config.lib.file.mkOutOfStoreSymlink "${dotfilesDir}/modules/home-manager/niri/config.kdl";

  home.packages = with pkgs; [
    cliphist
    nautilus
    nautilus-open-any-terminal
    noto-fonts
    noto-fonts-cjk-sans
    pkgs.catppuccin-cursors.mochaFlamingo
    udiskie
    wl-clipboard
    xwayland-satellite
  ];
}
