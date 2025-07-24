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
    ./git.nix
    ./gtk-qt.nix
    ./home.nix
    ./packages-unfree.nix
    ./packages.nix
    ./spicetify.nix
    ./vscode.nix
    ./zsh.nix
  ];
  programs.home-manager.enable = true;
}
