{
  cachix.pull = [ "octorus-nix" ];
  cachix.push = "octorus-nix";

  scripts.build.exec = "nix build .#octorus --print-build-logs";
  scripts.test.exec = "nix run .#octorus -- --version";
}
