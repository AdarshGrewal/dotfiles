# modules/home-manager/packages.nix

{
  inputs,
  outputs,
  pkgs,
  config,
  ...
}:
{

  home.packages = with pkgs; [
    android-tools
    telegram-desktop
  ];
}
