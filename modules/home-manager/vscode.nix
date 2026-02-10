# modules/home-manager/vscode.nix

{
  inputs,
  outputs,
  pkgs,
  config,
  ...
}:

{
  home.packages = with pkgs; [
    nerd-fonts.fira-code
  ];

  programs.vscode = {
    enable = true;
    profiles.default = {
      userSettings = {
        "editor.fontSize" = 14;
        "editor.fontFamily" = "'FiraCode Nerd Font', 'monospace', monospace";
        "terminal.integrated.fontSize" = 14;
        "terminal.integrated.fontFamily" = "'FiraCode Nerd Font Mono', 'monospace', monospace";
      };
      extensions = with pkgs.vscode-extensions; [
        jnoortheen.nix-ide
      ];
    };
  };
}
