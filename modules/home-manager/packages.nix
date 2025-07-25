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
    bitwarden-desktop
    git-repo
    telegram-desktop
  ];
}
