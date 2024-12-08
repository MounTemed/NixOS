{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-24.11";

    home-manager = {
      url = "github:nix-community/home-manager/release-24.11";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    hyprland = {
      type = "git";
      url = "https://github.com/hyprwm/Hyprland";
      submodules = true;
    };

    zen-browser = {
      url = "github:fufexan/zen-browser-flake";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    ayugram-desktop.url = "github:/ayugram-port/ayugram-desktop/release?submodules=1";


  };

  outputs = { nixpkgs, home-manager, ayugram-desktop, zen-browser, hyprland, ... } @ inputs: let
    system = "x86_64-linux";
    pkgs = import nixpkgs { inherit system; };
  in {
    nixosConfigurations = {
      nixos = nixpkgs.lib.nixosSystem {
        inherit system;
        modules = [
          ./configuration.nix
          home-manager.nixosModules.home-manager
        ];
      };
    };
    homeConfigurations = {
      laimick = home-manager.lib.homeManagerConfiguration {
        inherit pkgs;
        modules = [
          ./home.nix
        ];
      };
    };
  };
}
