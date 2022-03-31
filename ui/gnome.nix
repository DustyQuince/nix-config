{ config, lib, pkgs, ... }:

{
  services.xserver.enable = true;
  services.xserver.displayManager.sddm.enable = true;
  services.xserver.desktopManager.gnome.enable = true;
  hardware.enableRedistributableFirmware = true;
}
