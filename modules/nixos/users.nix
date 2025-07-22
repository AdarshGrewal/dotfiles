# modules/nixos/users.nix

{ config, pkgs, ... }:

{
  users.users.adarsh = {
    isNormalUser = true;
    description = "Adarsh Grewal";
    extraGroups = [
      "networkmanager"
      "wheel"
    ];
    shell = pkgs.zsh;
  };
}
