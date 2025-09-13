{ config, pkgs, ... }:

{
  imports = [
    ./git.nix
    ./bash.nix
    ./polybar.nix
    ./i3.nix
  ];

  home.username = "dev";
  home.homeDirectory = "/home/dev";

  home.stateVersion = "24.11";

  home.packages = with pkgs; [
    neovim
    git
    neofetch
    polybar
    tmux
  ];

  programs.home-manager.enable = true;

  xsession.enable = true;
}
