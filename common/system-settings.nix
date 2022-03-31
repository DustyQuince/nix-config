{ config, lib, pkgs, ... }:

{
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
  boot.supportedFilesystems = [ "ntfs" ];
  # My SFTP client (Filezilla) is slow if I don't tell the kernel it is cool for
  # packets to come in bigger chunks
  boot.kernel.sysctl = {
    "net.ipv4.tcp_rmem"="40960 873800 62914560";
    "net.core.rmem_max"="25000000";
  };
  system.stateVersion = "21.11";
  time.timeZone = "America/Denver";
  hardware.enableRedistributableFirmware = true;
  nix.extraOptions = ''
    experimental-features = nix-command flakes
  '';

  environment.systemPackages = with pkgs; [
    git
    source-code-pro
  ];

  fonts.fonts = with pkgs; [
    source-code-pro
  ];
}
