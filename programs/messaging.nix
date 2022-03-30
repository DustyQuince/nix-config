{ config, lib, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    element-desktop
    signal-desktop
    slack #unfree
    zoom-us #unfree
  ];
}
