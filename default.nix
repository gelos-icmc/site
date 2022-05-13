{ stdenv, jekyll, lib, baseurl ? null }:

stdenv.mkDerivation {
  name = "gelos-site";
  src = ./.;

  JEKYLL_ENV = "production" ;

  buildInputs = [ jekyll ];

  buildPhase = ''
    jekyll build ${lib.optionalString (baseurl != null) "--baseurl ${baseurl}"}
  '';
  installPhase = ''
    mkdir -p $out
    cp -Tr _site $out/public
  '';
}
