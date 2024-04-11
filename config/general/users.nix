{config, pkgs, lib, ...}:

{
  users.defaultUserShell = pkgs.zsh;
  users.users.may = {
    isNormalUser = true;
    createHome = true;
    description = "Main User";
    home = "/home/may"; 
    extraGroups = [
        "networkmanager" "transmission" "wheel" "libvirtd"
        "video" "audio" "kvm" "dialout" "octoprint" "greetd"
    ];
    useDefaultShell = true;
  };
}
