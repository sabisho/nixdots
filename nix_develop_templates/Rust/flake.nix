{
  description = "Rust dev shell";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    rust-overlay = {
      url = "github:oxalica/rust-overlay";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = {
    nixpkgs,
    rust-overlay,
    ...
  }: let
    system = "x86_64-linux";
    pkgs = import nixpkgs {
      inherit system;
      overlays = [rust-overlay.overlays.default];
    };
    rust = pkgs.rust-bin.stable.latest.default.override {
      extensions = ["rust-src" "rust-analyzer"];
    };
  in {
    devShells.${system}.default = pkgs.mkShell {
      buildInputs = [
        rust
        pkgs.pkg-config
        pkgs.openssl
      ];
    };
  };
}
