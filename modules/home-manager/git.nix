# modules/home-manager/git.nix

{
  inputs,
  outputs,
  pkgs,
  config,
  ...
}:
{
  programs.git = {
    enable = true;
    userName = "AdarshGrewal";
    userEmail = "adarshgrewal@gmail.com";
  };
}
