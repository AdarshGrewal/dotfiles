# modules/nixos/default.nix

{ inputs, outputs, ... }:

{
  imports = [
    ./1password.nix
    ./android.nix
    ./audio.nix
    ./bootloader.nix
    ./desktop.nix
    ./fs.nix
    ./locale.nix
    ./packages-unfree.nix
    ./packages.nix
    ./users.nix
    ./zram.nix
  ];
}
