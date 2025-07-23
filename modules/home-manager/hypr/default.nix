# modules/home-manager/hypr/default.nix

{
  inputs,
  outputs,
  pkgs,
  config,
  ...
}:
{
  imports = [
    ./hyprland.nix
    ./hyprpaper.nix
    ./hyprpolkitagent.nix
    ./waybar.nix
    ./wofi.nix
    ./kitty.nix
  ];

  home.packages = with pkgs; [
    hyprshot
    hyprpicker
    kdePackages.dolphin
    swaynotificationcenter
    udiskie
    wl-clip-persist
  ];
}
