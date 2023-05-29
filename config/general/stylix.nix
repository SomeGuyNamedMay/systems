{config, lib, pkgs, stylix, ...}:

{
          stylix.image = pkgs.fetchurl {
              url = "https://dl.dropboxusercontent.com/s/26outp2w90fw4bl/ffxiv-wallpaper.jpg?dl=0";
              sha256 = "I8vEvC2R68ToXDLD/ZYK93NXpxeWw84btX7Spfajuec=";
          };
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
