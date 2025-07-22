# modules/home-manager/home.nix

{
  inputs,
  config,
  pkgs,
  user,
  ...
}:
{
  home.username = "adarsh";
  home.homeDirectory = "/home/adarsh";
  home.stateVersion = "25.05";
}
