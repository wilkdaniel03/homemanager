{ config, pkgs, libs, ... }:

{
  programs.bash = {
    enable = true;
    initExtra = ''
      export PS1='[\u@\h \W]\$ '
    '';
  };
}
