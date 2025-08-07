{
  lib,
  stdenv,
  fetchurl,
  perl,
  perlPackages,
  makeWrapper,
}:

let
  xml_twig = perlPackages.XMLTwig;
  xml_parser = perlPackages.XMLParser;
in

stdenv.mkDerivation rec {
  pname = "xmp_pp";
  version = "3.52";

  src = fetchurl {
    url = "mirror://cpan/authors/id/M/MI/MIROD/XML-Twig-3.52.tar.gz";
    sha256 = "sha256-/vdYJsJPK4d9Cg0mRSEvxPuXVu1NJxFhSsFcSX6GgK0=";
  };

  buildInputs = [
    perl
    xml_twig
    xml_parser
    makeWrapper
  ];

  installPhase = ''
    mkdir -p $out/bin
    cp tools/xml_pp/xml_pp $out/bin/
    wrapProgram $out/bin/xml_pp --set PERL5LIB ${xml_twig}/lib/perl5/site_perl:${xml_parser}/lib/perl5/site_perl
  '';

  meta = {
    description = "Command line pretty-printer for XML using libxml-twig-perl";
    license = with lib.licenses; [
      artistic1
      gpl1Plus
    ];
    mainProgram = "xml_pp";
  };
}
