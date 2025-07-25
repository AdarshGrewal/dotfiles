# modules/nixos/desktop.nix

{ config, pkgs, ... }:

{
  # Enable NetworkManager
  networking.networkmanager.enable = true;

  # Enable the Hyprland WM.
  programs.hyprland = {
    enable = true;
    withUWSM = true;
  };
  environment.sessionVariables.NIXOS_OZONE_WL = "1";

  services.displayManager = {
    sddm = {
      enable = true;
      wayland.enable = true;
    };
  };

  # Enable pam for hyprlock
  security.pam.services.hyprlock = { };

  # Enable udisks2 service
  services.udisks2.enable = true;
}
