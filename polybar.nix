{ config, pkgs, libs, ... }:

let
  background = "#000000";
  foreground = "#ffffff";
in
{
  services.polybar = {
    enable = true;
    script = "polybar -c $HOME/.config/polybar/config.ini -q -r top &";
    config = {
      "global/wm" = {
        margin-top = 0;
	margin-bottom = 0;
      };
      "bar/top" = {
        width = "100%";
	height = 32;
	background = background;
	foreground = foreground;
	modules-left = " ";
	modules-center = "date";
	modules-right = " ";
      };
      "module/date" = {
        type = "internal/date";
	interval = 1;
	date = "%H %M %S";
	label = "%date%";
	label-foreground = foreground;
      };
    };
  };
}
