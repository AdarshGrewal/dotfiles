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
    ./home.nix
    ./git.nix
    ./packages.nix
    ./vscode.nix
    ./zsh.nix
  ];
  programs.home-manager.enable = true;
}
