{ config, lib, pkgs, ... }:

{
  services.xserver = {
    layout = "us";
    xkbOptions = "ctrl:nocaps";
    xkbVariant = "dvorak";
  };
}
