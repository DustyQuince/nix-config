{ config, lib, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    firefox
    ungoogled-chromium
    nyxt
    opera #unfree
    google-chrome #unfree
  ];
}
