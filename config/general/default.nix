{config, lib, pkgs, stylix, ...}:
{
    imports = [
        ./boot.nix
        ./configuration.nix
        ./hardware.nix
        ./packages.nix
        ./users.nix
        ./virtualisation.nix
        ./stylix.nix
    ];
}
