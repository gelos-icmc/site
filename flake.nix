{
  description = "Site institucional do GELOS/USP";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-22.05";
    utils.url = "github:numtide/flake-utils";
  };


  outputs = { self, nixpkgs, utils }: utils.lib.eachDefaultSystem (system:
  let pkgs = nixpkgs.legacyPackages.${system};
  in rec {
    packages = rec {
      gelos-site = pkgs.callPackage ./default.nix { };
      gelos-site-serve = pkgs.writeShellScriptBin "serve" ''
        echo "Serving on http://localhost:8000"
        ${pkgs.webfs}/bin/webfsd -F -f index.html -r ${gelos-site}/public
      '';
      remove-nbsp = pkgs.writeShellScriptBin "remove-nbsp" ''
        ${pkgs.gnused}/bin/sed 's/\xC2\xA0/ /g' -i $(find . -name '*.md')
      '';
      default = gelos-site;
    };

    apps = rec {
      gelos-site-serve = {
        type = "app";
        program = "${packages.gelos-site-serve}/bin/serve";
      };
      default = gelos-site-serve;
    };
  }) // {
    nixConfig = {
      extra-substituers = [ "https://gelos-icmc.cachix.org" ];
      extra-trusted-public-keys = [ "gelos-icmc.cachix.org-1:IQxtwf+SS2LUWWoPgzYQMAYUvsBA+7tdooE42KRcCWk=" ];
    };
  };
}
