# modules/nixos/audio.nix

{ config, pkgs, ... }:

{
  programs.adb.enable = true;
  users.users.adarsh.extraGroups = [ "adbusers" ];
}
