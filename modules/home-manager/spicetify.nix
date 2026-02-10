# modules/home-manager/spicetify.nix

{
  inputs,
  outputs,
  pkgs,
  config,
  ...
}:

{
  programs.spicetify =
    let
      spicePkgs = inputs.spicetify-nix.legacyPackages.${pkgs.stdenv.hostPlatform.system};
    in
    {
      enable = true;
      enabledExtensions = with spicePkgs.extensions; [
        hidePodcasts
      ];

      theme = spicePkgs.themes.catppuccin;
      colorScheme = "mocha";
    };
}
