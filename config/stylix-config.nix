{ config, pkgs, lib, stylix, ... }:

{
  stylix.image = ../resources/wallpapers/raison-detre.jpg;
  stylix.polarity = "dark";
  stylix.fonts = {
    serif = {
      package = pkgs.dejavu_fonts;
      name = "DejaVu Serif";
    };
    sansSerif = {
      package = pkgs.dejavu_fonts;
      name = "DejaVu Sans";
    };
    monospace = {
      package = pkgs.dejavu_fonts;
      name = "DejaVu Sans Mono";
    };
    sizes = {
      desktop = 12;
      applications = 15;
      terminal = 15;
      popups = 12;
    };
  };
  stylix.targets = {
    grub.useImage = true;
  };
}
