{
  description = "Site institucional do GELOS/USP";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-23.11";
    utils.url = "github:numtide/flake-utils";
  };


  outputs = { self, nixpkgs, utils }: utils.lib.eachDefaultSystem (system:
  let
    pkgs = nixpkgs.legacyPackages.${system};
    mkApp = drv: {
      type = "app";
      program = nixpkgs.lib.getExe drv;
    };
  in rec {
    packages = rec {
      default = gelos-site;
      gelos-site = pkgs.callPackage ./default.nix { };
    };
    apps = rec {
      default = serve;
      serve = mkApp (pkgs.writeShellScriptBin "serve" ''
        echo "Serving on http://localhost:8000"
        ${pkgs.webfs}/bin/webfsd -F -f index.html -r ${packages.default}/public
      '');
      check-links = mkApp (pkgs.writeShellScriptBin "check-links" ''
        ${pkgs.lychee}/bin/lychee --quiet --no-progress --base="${packages.default}/public" "${packages.default}/public"
      '');
      remove-nbsp = mkApp (pkgs.writeShellScriptBin "remove-nbsp" ''
        ${pkgs.gnused}/bin/sed 's/\xC2\xA0/ /g' -i $(find . -name '*.md')
      '');
    };
  });
}
