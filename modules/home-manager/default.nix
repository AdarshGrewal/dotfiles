# modules/home-manager/default.nix

{
  inputs,
  outputs,
  pkgs,
  config,
  ...
}:
{
  imports = [
    ./home.nix
    ./git.nix
    ./packages.nix
  ];
  programs.home-manager.enable = true;
}
