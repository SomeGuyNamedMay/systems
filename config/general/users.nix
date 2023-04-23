{config, pkgs, lib, ...}:

{
  #users.mutableUsers = false;
  users.defaultUserShell = pkgs.zsh;
  #users.motd = ../resources/message.txt
  users.users.mason = {
    isNormalUser = true;
    createHome = true;
    description = "Main User";
    home = "/home/mason";
    #hashedPassword = "$y$j9T$K7yWmzQ9/SfWNW2zXoQu10$P6sWgjF3AWVYahoUiMOgGxgZvMVAFzsYotx4g8yHek2";
    extraGroups = [
        "networkmanager" "transmission" "wheel" "libvirtd"
        "video" "audio" "kvm" "dialout" "octoprint" "greetd"
    ];
    useDefaultShell = true;
  };
}
