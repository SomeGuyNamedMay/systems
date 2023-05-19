{
  inputs = {
      nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
      stylix.url = "github:danth/stylix";
  };
  description = "A very basic flake";
  outputs = { self, nixpkgs, stylix, ...}:
  let
    pkgs = nixpkgs.legacyPackages.x86_64-linux;
    shared-modules = [
        #stylix.nixosModules.stylix
        #{
        #  stylix.image = ./resources/wallpapers/raison-detre.jpg;
        #  stylix.polarity = "dark";
        #  stylix.fonts = {
        #    serif = {
        #      package = pkgs.dejavu_fonts;
        #      name = "DejaVu Serif";
        #    };
        #    sansSerif = {
        #      package = pkgs.dejavu_fonts;
        #      name = "DejaVu Sans";
        #    };
        #    monospace = {
        #      package = pkgs.dejavu_fonts;
        #      name = "DejaVu Sans Mono";
        #    };
        #    sizes = {
        #      desktop = 12;
        #      applications = 15;
        #      terminal = 15;
        #      popups = 12;
        #    };
        #  };
        #  stylix.targets = {
        #    grub.useImage = true;
        #  };
        #}
        ./config/general/boot.nix
        ./config/general/configuration.nix
        ./config/general/hardware.nix
        ./config/general/packages.nix
        ./config/general/users.nix
        ./config/general/virtualisation.nix
    ];
  in {
      nixosConfigurations.flex = nixpkgs.lib.nixosSystem {
          system = "x86_64-linux";
          modules = shared-modules ++ [ ./config/flex/hardware.nix ];
      };
      nixosConfigurations.desktop = nixpkgs.lib.nixosSystem {
          system = "x86_64-linux";
          modules = shared-modules ++ [ ./config/desktop/hardware.nix ];
      };
  };
}
