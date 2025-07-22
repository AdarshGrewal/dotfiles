# modules/nixos/packages.nix

{ config, pkgs, ... }:

{
  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;

  # ZSH
  programs.zsh.enable = true;

  # Systemwide Packages
  environment.systemPackages = with pkgs; [
    git
    htop
  ];

  # User Packages
  users.users.adarsh = {
    packages = with pkgs; [
      kdePackages.kate
    ];
  };
}
