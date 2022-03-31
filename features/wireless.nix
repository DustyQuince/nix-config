{ config, lib, pkgs, ... }:

{
  networking.networkmanager.enable = true;
  networking.wireless.enable = false;
  networking.useDHCP = false;
}
