{
  inputs = {
      nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
      stylix.url = "github:SomeGuyNamedMay/stylix/wallpaper-refactor";
  };
  description = "A very basic flake";
  outputs = { self, nixpkgs, stylix, ...}:
  let
    shared-modules = [
        stylix.nixosModules.stylix
        (import ./config/general)
    ];
  in {
      nixosConfigurations.flex = nixpkgs.lib.nixosSystem {
          system = "x86_64-linux";
          modules = shared-modules ++ [ ./config/flex/hardware.nix ];
          extraArgs = { inherit stylix; };
      };
      nixosConfigurations.desktop = nixpkgs.lib.nixosSystem {
          system = "x86_64-linux";
          modules = shared-modules ++ [ ./config/desktop/hardware.nix ];
          extraArgs = { inherit stylix; };
      };
  };
}
