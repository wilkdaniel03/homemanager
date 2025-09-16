{ config, pkgs, ... }:

{
  imports = [
    ./git.nix
    ./bash.nix
    ./polybar.nix
    ./i3.nix
    ./picom.nix
    ./alacritty.nix
  ];

  home.username = "dev";
  home.homeDirectory = "/home/dev";

  home.stateVersion = "24.11";

  home.packages = with pkgs; [
    alacritty
    neovim
    git
    neofetch
    polybar
    tmux
    picom
  ];

  programs.home-manager.enable = true;

  xsession.enable = true;
}
