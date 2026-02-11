# octorus-nix

Unofficial personal Nix flake for [Octorus](https://github.com/ushironoko/octorus) - AI-Powered PR Review Tool.

## Usage

```nix
# flake.nix
{
  inputs.octorus.url = "github:naitokosuke/octorus-nix";

  # ...
  environment.systemPackages = [ inputs.octorus.packages.${system}.default ];
}
```

