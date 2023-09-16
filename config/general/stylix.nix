{config, lib, pkgs, stylix, ...}:

{
          stylix.wallpaper = config.lib.stylix.mkAnimation {
              animation = ../../resources/gif/008.gif;
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
