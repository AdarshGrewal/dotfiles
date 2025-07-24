# modules/home-manager/packages.nix

{
  inputs,
  outputs,
  pkgs,
  config,
  ...
}:
{
  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;

  home.packages = with pkgs; [
    google-chrome
    sublime-merge
  ];
}
