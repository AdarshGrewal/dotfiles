# modules/default.nix

{ inputs, outputs, ... }:

{
  imports = [ ./nixos ];
  home-manager = {
    extraSpecialArgs = { inherit inputs outputs; };
    useGlobalPkgs = false;
    useUserPackages = true;
    users = {
      adarsh = {
        imports = [
          ./home-manager
          inputs.spicetify-nix.homeManagerModules.default
        ];
      };
    };
  };
}
