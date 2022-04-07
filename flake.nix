{
  description = "Site institucional do GELOS/USP";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, utils }:
    let
      overlay = final: prev: {
        gelos-site = final.callPackage ./default.nix { };
      };
      overlays = [ overlay ];
    in
    {
      inherit overlay overlays;
    } //
    utils.lib.eachDefaultSystem (system:
      # Importar overlay
      let
        pkgs = import nixpkgs { inherit system overlays; };
      in
      rec {
        # Exportar como package
        defaultPackage = packages.gelos-site;
        packages.gelos-site = pkgs.gelos-site;
        packages.serve = pkgs.writeShellScriptBin "serve" ''
          echo "Serving on localhost:8000"
          ${pkgs.webfs}/bin/webfsd  -F -f index.html -r ${packages.gelos-site}/public
        '';

        defaultApp = apps.gelos-site;
        apps.gelos-site = {
          type = "app";
          program = "${packages.serve}/bin/serve";
        };

        devShell = pkgs.mkShell {
          inputsFrom = [ defaultPackage ];
        };
      }
    );
}
