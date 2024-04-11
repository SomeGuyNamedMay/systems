{pkgs, config, lib, ...}:

{
  environment.pathsToLink = [ "/share/zsh" ];
  environment.systemPackages = with pkgs; [
    trashy
    tldr
    libnotify
    pamixer
    playerctl
    home-manager
    git
    vim
    foot
  ];
}
