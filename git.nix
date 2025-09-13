{ config, pkgs, libs, ... }:

{
  programs.git = {
    enable = true;
    userName = "wilkdaniel03";
    userEmail = "wilkdaniel03@gmail.com";
    extraConfig = {
      init.defaultBranch = "master";
    };
  };
}
