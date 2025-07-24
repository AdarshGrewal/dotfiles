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
    ./kitty.nix
    ./swaync.nix
    ./waybar.nix
    ./wofi.nix
  ];

  home.packages = with pkgs; [
    noto-fonts
    noto-fonts-cjk-sans
    hyprshot
    hyprpicker
    nautilus
    nautilus-open-any-terminal
    wl-clip-persist
    hyprsysteminfo
    pkgs.catppuccin-cursors.mochaFlamingo
    hyprutils
    udiskie
  ];
}
