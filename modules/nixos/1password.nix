# modules/nixos/packages-unfree.nix
{ config, pkgs, ... }:

{
  programs._1password.enable = true;
  programs._1password-gui = {
    enable = true;
    polkitPolicyOwners = [ "adarsh" ];
  };
  environment.etc."1password/custom_allowed_browsers" = {
    text = ''
      google-chrome-stable
    '';
    mode = "0755";
  };
}
