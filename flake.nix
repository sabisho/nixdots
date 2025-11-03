{
  description = "Klynt's NixOS config";

  # Where we get our packages and tools from
  inputs = {
    nixpkgs.url = "nixpkgs/nixos-unstable";

    zen-browser = {
      url = "github:0xc000022070/zen-browser-flake";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  # Our actual system configurations
  outputs = {
    nixpkgs,
    home-manager,
    ...
  } @ inputs: let
    username = "klynt"; # Your username - change this once here
  in {
    # Define each computer you want to configure
    nixosConfigurations = {
      # === LAPTOP: Athena ===
      Athena = nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";

        specialArgs = {
          inherit inputs username;
          hostname = "Athena";
          profile = "nvidia-prime";
          type = "laptop";
        };

        modules = [
          ./hosts/laptop/Athena/configuration.nix
          ./modules/drivers/nvidia-prime.nix

          home-manager.nixosModules.home-manager
          {
            home-manager = {
              useGlobalPkgs = true;
              useUserPackages = true;
              backupFileExtension = "hmbkp";
              users.${username} = import ./modules/home/home.nix;
              extraSpecialArgs = {
                inherit username;
                hostname = "Athena";
                type = "laptop";
              };
            };
          }
        ];
      };

      # === DESKTOP: Aeirith ===
      Aeirith = nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";

        specialArgs = {
          inherit inputs username;
          hostname = "Aeirith";
          profile = "nvidia";
          type = "desktop";
        };

        modules = [
          ./hosts/desktop/Aeirith/configuration.nix
          ./modules/drivers/nvidia.nix

          home-manager.nixosModules.home-manager
          {
            home-manager = {
              useGlobalPkgs = true;
              useUserPackages = true;
              backupFileExtension = "hmbkp";
              users.${username} = import ./modules/home/home.nix;
              extraSpecialArgs = {
                inherit username;
                hostname = "Aeirith";
                type = "desktop";
              };
            };
          }
        ];
      };
    };
  };
}
