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
    ./hyprpolkitagent.nix
    ./waybar.nix
    ./wofi.nix
  ];

  home.packages = with pkgs; [
    hyprpicker
    kdePackages.dolphin
    swaynotificationcenter
    udiskie
    wl-clip-persist
  ];
}
