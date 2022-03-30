{ config, lib, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    filezilla
    gparted
    wireshark
    transmission
    dbeaver
    bisq-desktop
    google-drive-ocamlfuse #unfree
  ];
}
