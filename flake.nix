{
  inputs = {
      nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
  };
  description = "A very basic flake";
  outputs = { self, nixpkgs, ...}:
  let
    shared-modules = [
        (import ./config/general)
    ];
  in {
      nixosConfigurations.flex = nixpkgs.lib.nixosSystem {
          system = "x86_64-linux";
          modules = shared-modules ++ [ ./config/flex/hardware.nix ];
          extraArgs = {};
      };
      nixosConfigurations.desktop = nixpkgs.lib.nixosSystem {
          system = "x86_64-linux";
          modules = shared-modules ++ [ ./config/desktop/hardware.nix ];
          extraArgs = { };
      };
  };
}
