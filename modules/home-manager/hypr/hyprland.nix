{ config, pkgs, ... }:

{
  wayland.windowManager.hyprland = {
    settings = {
      exec-once = [
        "wl-clip-persist --clipboard regular"
        "udiskie"
      ];
    };
  };
}
