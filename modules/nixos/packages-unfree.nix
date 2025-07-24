# modules/nixos/packages-unfree.nix
{ config, pkgs, ... }:

{
  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;

  # Enable Warp-CLI service
  services.cloudflare-warp.enable = true;
}
