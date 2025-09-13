{ config, pkgs, libs, ... }:

{
  services.picom = {
    enable = true;
    activeOpacity = 0.9;
    inactiveOpacity = 0.6;
  };
}
