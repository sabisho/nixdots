{
  description = "Flutter and Android development environment";

  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";

  outputs = {
    self,
    nixpkgs,
  }: let
    system = "x86_64-linux";
    pkgs = import nixpkgs {
      inherit system;
      config.allowUnfree = true;
    };
  in {
    devShells.${system}.default = pkgs.mkShell {
      packages = with pkgs; [
        flutter
        android-studio
        jdk17
      ];

      shellHook = ''
        export JAVA_HOME="${pkgs.jdk17}"

        echo "Flutter development environment ready!"
        echo "Run 'flutter doctor' to check setup"
        echo "Run 'android-studio' to open Android Studio"
      '';
    };
  };
}
