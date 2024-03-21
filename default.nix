{ stdenv, ruby, bundlerEnv, lib, baseurl ? null, atas ? null }:

let
  gems = bundlerEnv {
    name = "gelos-site-env";
    inherit ruby;
    gemdir = ./.;
  };
in
stdenv.mkDerivation {
  name = "gelos-site";
  src = ./.;

  JEKYLL_ENV = "production";

  buildInputs = [ gems ruby ];

  buildPhase = ''
    ${gems}/bin/bundle exec jekyll build ${lib.optionalString (baseurl != null) "--baseurl ${baseurl}"}
  '';
  installPhase = ''
    mkdir -p $out
    cp -Tr _site $out/public
    ${lib.optionalString (atas != null) "cp ${atas}/*.pdf $out/public/reunioes/"}
  '';
}
