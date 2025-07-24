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
    android-studio
    google-chrome
    sublime-merge
  ];
}
