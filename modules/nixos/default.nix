# modules/nixos/default.nix

{ inputs, outputs, ... }:

{
  imports = [
    ./audio.nix
    ./bootloader.nix
    ./desktop.nix
    ./locale.nix
    ./packages-unfree.nix
    ./packages.nix
    ./users.nix
    ./zram.nix
  ];
}
