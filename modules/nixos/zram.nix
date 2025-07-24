# modules/nixos/zram.nix

{ config, pkgs, ... }:

{
  zramSwap = {
    enable = true;
    algorithm = "zstd";
  };
}
