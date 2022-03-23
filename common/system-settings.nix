{ config, lib, pkgs, ... }:

{
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
  system.stateVersion = "21.11";
  time.timeZone = "America/Denver";
  hardware.enableRedistributableFirmware = true;
  nix.extraOptions = ''
    experimental-features = nix-command flakes
  '';
}
