# modules/default.nix

{ inputs, outputs, ... }:

{
  imports = [ ./nixos ];
  home-manager = {
    extraSpecialArgs = { inherit inputs outputs; };
    useGlobalPkgs = false;
    useUserPackages = true;
    users = {
      adarsh = import ./home-manager;
    };
  };
}
