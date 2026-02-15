# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.1.0/).

## Versioning Scheme

This project uses the format: `<octorus-version>-nix.<revision>`

- When octorus upstream updates: Update the octorus version part
- When octorus-nix changes: Increment the `-nix.X` revision

## [Unreleased]

## [0.3.4-nix.1] - 2026-02-15

### Changed

- Update octorus to v0.3.4

## [0.3.3-nix.1] - 2026-02-12

### Changed

- Update octorus to v0.3.3

## [0.3.2-nix.1] - 2026-02-11

### Added

- Initial Nix flake for octorus v0.3.2
- CI workflow for PR build & test
- Release workflow for CHANGELOG-based auto-tagging
- Cachix binary cache (`octorus-nix`)

[Unreleased]: https://github.com/naitokosuke/octorus-nix/compare/0.3.4-nix.1...HEAD
[0.3.4-nix.1]: https://github.com/naitokosuke/octorus-nix/compare/0.3.3-nix.1...0.3.4-nix.1
[0.3.3-nix.1]: https://github.com/naitokosuke/octorus-nix/compare/0.3.2-nix.1...0.3.3-nix.1
[0.3.2-nix.1]: https://github.com/naitokosuke/octorus-nix/releases/tag/0.3.2-nix.1
