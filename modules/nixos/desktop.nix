# modules/nixos/desktop.nix

{ config, pkgs, ... }:

{
  # Enable NetworkManager
  networking.networkmanager.enable = true;

  # Enable the niri WM.
  programs.niri = {
    enable = true;
  };

  environment.sessionVariables.NIXOS_OZONE_WL = "1";

  services.displayManager = {
    sddm = {
      enable = true;
      wayland.enable = true;
    };
  };

  services.blueman.enable = true;

  security.polkit.enable = true;
  services.gnome.gnome-keyring.enable = true;
  security.pam.services.swaylock = { };

  environment.systemPackages = with pkgs; [
    waybar
    alacritty
    fuzzel
    swaylock
    mako
    swayidle
    swaybg
  ];

  # Enable udisks2 service
  services.udisks2.enable = true;
}
