{ config, lib, pkgs, ... }:

{
  system.stateVersion = "21.11";
  time.timeZone = "America/Denver";
  hardware.enableRedistributableFirmware = true;
  nix.extraOptions = ''
    experimental-features = nix-command flakes
  '';
}
