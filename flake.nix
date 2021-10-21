{
  description = "Site institucional do GELOS/USP";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, utils }: {
    # Exportar como overlay
    overlay = final: prev: {
      geos-site = final.callPackage ./default.nix { };
    };
  } //
  utils.lib.eachDefaultSystem (system:
    # Importar overlay
    let pkgs = import nixpkgs { inherit system; overlays = [ self.overlay ]; };
    in rec {
      # Exportar como package
      packages.geos-site = pkgs.geos-site;
      defaultPackage = packages.geos-site;

      devShell = pkgs.mkShell {
        inputsFrom = [ defaultPackage ];
      };
    }
  );
}
