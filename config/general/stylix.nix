{config, lib, pkgs, stylix, ...}:

{
          stylix.wallpaper = config.lib.stylix.types.wallpaper.from.image {
              file = ../../resources/static/raison-detre.jpg;
          };
          stylix.fonts = {
            serif = {
              package = pkgs.nerdfonts;
              name = "FiraCode Nerd Font";
            };
            sansSerif = {
              package = pkgs.nerdfonts;
              name = "FiraCode Nerd Font";
            };
            monospace = {
              package = pkgs.nerdfonts;
              name = "FiraCode Nerd Font Mono";
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
