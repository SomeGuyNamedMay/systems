{pkgs, conifg, lib, ...}:

{
    hardware.opengl = {
        enable = true;
        driSupport = true;
        driSupport32Bit = true;
    };

    sound.enable = true;
 #   hardware.pulseaudio.enable = true;
    services.pipewire = {
        enable = true;
        alsa.enable = true;
        alsa.support32Bit = true;
        pulse.enable = true;
        jack.enable = true;
    };

    services.printing.enable = true;

    programs.gamemode = {
        enable = true;
        settings = {
            general = {
                renice = 10;
            };
            custom = {
                start = "${pkgs.libnotify}/bin/notify-send 'GameMode started'";
                end = "${pkgs.libnotify}/bin/notify-send 'GameMode ended'";
            };
        };
    };

    hardware.bluetooth = {
        enable = true;
        settings = {
            General = {
                Enable = "Source,Sink,Media,Socket";
            };
        };
    };
}
