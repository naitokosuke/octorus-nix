{
  description = "Unofficial personal Nix flake for octorus - AI-Powered PR Review Tool";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
  };

  outputs =
    { self, nixpkgs }:
    let
      supportedSystems = [
        "aarch64-darwin"
      ];

      forAllSystems = nixpkgs.lib.genAttrs supportedSystems;

      mkOctorus = pkgs: pkgs.rustPlatform.buildRustPackage rec {
        pname = "octorus";
        version = "0.4.2";

        src = pkgs.fetchFromGitHub {
          owner = "ushironoko";
          repo = "octorus";
          rev = "v${version}";
          hash = "sha256-fg5yy60A7YzR+yVOGJCJO4ghO6SIdwEYCB+j9y4m15M=";
        };

        cargoLock = {
          lockFile = "${src}/Cargo.lock";
        };

        cargoBuildFlags = [
          "-p"
          "octorus"
        ];

        doCheck = false;

        meta = {
          description = "AI-Powered PR Review Tool";
          homepage = "https://github.com/ushironoko/octorus";
          license = pkgs.lib.licenses.mit;
          maintainers = [ ];
          mainProgram = "or";
        };
      };
    in
    {
      packages = forAllSystems (system:
        let
          pkgs = nixpkgs.legacyPackages.${system};
          octorus = mkOctorus pkgs;
        in
        {
          inherit octorus;
          default = octorus;
        }
      );

      apps = forAllSystems (system:
        let
          pkgs = nixpkgs.legacyPackages.${system};
          octorus = mkOctorus pkgs;
          app = {
            type = "app";
            program = "${octorus}/bin/or";
            meta = {
              description = "AI-Powered PR Review Tool";
              mainProgram = "or";
            };
          };
        in
        {
          octorus = app;
          default = app;
        }
      );
    };
}
