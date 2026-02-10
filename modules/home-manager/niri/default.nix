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
    noto-fonts
    noto-fonts-cjk-sans
    nautilus
    nautilus-open-any-terminal
    wl-clip-persist
    pkgs.catppuccin-cursors.mochaFlamingo
    udiskie
  ];
}
