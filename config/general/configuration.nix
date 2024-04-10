# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, pkgs, lib, stylix, ... }:

{

  #x11 setup
  services.xserver = {
      enable = true;
      displayManager.startx.enable = true;
  };

  nix.settings.experimental-features = [ "nix-command" "flakes" ];
  nix.gc.automatic = true;
  programs.nix-ld.enable = true;
  nix.optimise.automatic = true;

  nixpkgs.config.allowUnfree = true;

  location.provider = "geoclue2";
  services.geoclue2 = {
      enable = true;
  };
  programs.hyprland.enable = true;

  services.udisks2.enable = true;

  programs.light.enable = true;
  services.upower.enable = true;

  programs.dconf.enable = true;
  programs.seahorse.enable = true;
  services.gnome.gnome-keyring.enable = true;

  programs.regreet.enable = true;
  
  services.dbus.enable = true;
  services.gvfs.enable = true;

  services.tumbler.enable = true;

  # Enable networking
  networking.networkmanager.enable = true;

  networking.firewall = {
      enable = true;
      allowedTCPPortRanges = [
          { from = 1714; to = 1764; }
      ];
      allowedUDPPortRanges = [
          { from = 1714; to = 1764; }
      ];
  };


  # Set your time zone.
  time.timeZone = "America/New_York";

  # Select internationalisation properties.
  i18n.defaultLocale = "en_US.utf8";

  # Enable CUPS to print documents.
  services.printing.enable = true;

  # Enable sound with pipewire.
  security.rtkit.enable = true;

  security.pam.services = {
      swaylock = {
          text = "auth include login";
      };
  };

  # Define a user account. Don't forget to set a password with ‘passwd’.
  programs.zsh.enable = true;

  system.stateVersion = "22.05";
}
