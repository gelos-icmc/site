{
  description = "Site institucional do GELOS/USP";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, utils }: {
    # Exportar como overlay
    overlay = final: prev: {
      gelos-site = final.callPackage ./default.nix { };
    };
  } //
  utils.lib.eachDefaultSystem (system:
    # Importar overlay
    let pkgs = import nixpkgs { inherit system; overlays = [ self.overlay ]; };
    in rec {
      # Exportar como package
      packages.gelos-site = pkgs.gelos-site;
      defaultPackage = packages.gelos-site;

      devShell = pkgs.mkShell {
        inputsFrom = [ defaultPackage ];
      };
    }
  );
}
