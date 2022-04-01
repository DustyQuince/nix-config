{ config, lib, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    firefox
    ungoogled-chromium
    opera #unfree
    google-chrome #unfree
  ];
}
