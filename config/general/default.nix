{config, lib, pkgs, stylix, ...}:
{
    imports = [
        ./boot.nix
        ./configuration.nix
        ./hardware.nix
        ./packages.nix
        ./users.nix
    ];
    nix.package = pkgs.nixFlakes;
    nix.settings = {
        substituters = [
            "https://cache.nixos.org/"
            "https://nix-community.cachix.org"
            "https://hyprland.cachix.org"
        ];
        trusted-public-keys = [
             "nix-community.cachix.org-1:mB9FSh9qf2dCimDSUo8Zy7bkq5CX+/rkCWyvRCYg3Fs="
             "hyprland.cachix.org-1:a7pgxzMz7+chwVL3/pzj6jIBMioiJM7ypFP8PwtkuGc="
        ];
    };
}
