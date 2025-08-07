{ pkgs }:

let
  xmp_pp = import ./xmp_pp.nix {
    lib = pkgs.lib;
    stdenv = pkgs.stdenv;
    fetchurl = pkgs.fetchurl;
    perl = pkgs.perl;
    perlPackages = pkgs.perlPackages;
    makeWrapper = pkgs.makeWrapper;
  };
in
{
  xmp_pp = xmp_pp;
}
