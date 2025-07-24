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
    ./hypr
    ./fastfetch.nix
    ./home.nix
    ./git.nix
    ./gtk-qt.nix
    ./packages.nix
    ./packages-unfree.nix
    ./spicetify.nix
    ./vscode.nix
    ./zsh.nix
  ];
  programs.home-manager.enable = true;
}
