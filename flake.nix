{
  description = "Site institucional do GELOS/USP";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    utils.url = "github:numtide/flake-utils";
  };


  outputs = { self, nixpkgs, utils }: {
    overlays = rec {
      gelos-site = final: _prev: {
        gelos-site = final.callPackage ./default.nix { };
        gelos-site-serve = final.writeShellScriptBin "serve" ''
          echo "Serving on localhost:8000"
          ${final.webfs}/bin/webfsd -F -f index.html -r ${gelos-site}/public
        '';
      };
      default = gelos-site;
    };
  } // (utils.lib.eachDefaultSystem (system:
    let
      pkgs = import nixpkgs { inherit system; overlays = [ self.overlays.default ]; };
    in
    {
      packages = rec {
        inherit (pkgs) gelos-site gelos-site-serve;
        default = gelos-site;
      };

      apps = rec {
        gelos-site-serve = pkgs.mkApp {
          type = "app";
          program = "${pkgs.gelos-site-serve}/bin/serve";
        };
        default = gelos-site-serve;
      };

      devShells = rec {
        gelos-site = pkgs.mkShell {
          inputsFrom = [ pkgs.gelos-site ];
          buildInputs = with pkgs; [
            nodePackages.prettier
            ruby
            rubyPackages.solargraph
          ];
        };
        default = gelos-site;
      };
    }
  ));
}
