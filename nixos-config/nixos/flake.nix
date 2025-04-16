{
  description = "Nixos config flake";
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };    
  };

  outputs = { self, nixpkgs, home-manager, ... }@inputs: {
  # change user instead of virajs to your username      
  nixosConfigurations = {
    virajs = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";
      specialArgs = {inherit inputs;};
      modules = [
        ./hosts/hyperland/configuration.nix
        home-manager.nixosModules.home-manager
        {
          home-manager.useGlobalPkgs = true;
          home-manager.useUserPackages = true;
          home-manager.users.virajs = import ./hosts/hyperland/home.nix;
        }
      ];
    };







  };


  };
}
