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
    git-repo
    telegram-desktop
    qbittorrent
  ];
}
