# modules/home-manager/hypr/hyprpolkitagent.nix

{
  inputs,
  outputs,
  pkgs,
  config,
  ...
}:

{
  services.hyprpolkitagent.enable = true;
}
