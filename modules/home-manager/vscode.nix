# modules/home-manager/vscode.nix

{
  inputs,
  outputs,
  pkgs,
  config,
  ...
}:

{
  programs.vscode = {
    enable = true;
    profiles.default.extensions = with pkgs.vscode-extensions; [
      jnoortheen.nix-ide
    ];
  };
}
