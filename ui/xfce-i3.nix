{ config, lib, pkgs, ... }:

{
  #helps i3blocks find what it needs
  environment.pathsToLink = [ "/libexec" ];
  services.xserver = {
    enable = true;
    displayManager.defaultSession = "xfce";
    desktopManager = {
      xterm.enable = false;
      xfce = {
        enable = true;
        noDesktop = true;
        enableXfwm = false;
      };
    };
    windowManager.i3.enable = true;
  };
}
