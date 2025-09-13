{ config, pkgs, libs, ... }:

{
  xsession.windowManager.i3 = {
    enable = true;

    config = rec {
      modifier = "Mod4";
      bars = [];

      window.border = 0;

      gaps = {
        inner = 0;
        outer = 0;
      };

      keybindings = {
        "${modifier}+Return" = "exec ${pkgs.alacritty}/bin/alacritty";
	"${modifier}+w" = "kill";
	"${modifier}+Shift+r" = "reload";
	"${modifier}+f" = "fullscreen";
	"${modifier}+s" = "exec dmenu_run";

	"${modifier}+1" = "workspace 1";
	"${modifier}+2" = "workspace 2";
	"${modifier}+3" = "workspace 3";
	"${modifier}+4" = "workspace 4";
	"${modifier}+5" = "workspace 5";
	"${modifier}+6" = "workspace 6";
	"${modifier}+7" = "workspace 7";
	"${modifier}+8" = "workspace 8";
	"${modifier}+9" = "workspace 9";
	"${modifier}+0" = "workspace 0";
      };
    };
  };
}
