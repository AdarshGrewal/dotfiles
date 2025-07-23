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
    ./hypridle.nix
    ./hyprland.nix
    ./hyprlock.nix
    ./hyprpaper.nix
    ./hyprpolkitagent.nix
    ./waybar.nix
    ./wofi.nix
    ./kitty.nix
    ./swaync.nix
  ];

  home.packages = with pkgs; [
    hyprshot
    hyprpicker
    nautilus
    nautilus-open-any-terminal
    wl-clip-persist
    hyprsysteminfo
    pkgs.catppuccin-cursors.mochaFlamingo
    hyprutils
  ];
}
