{ config, lib, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    firefox
    ungoogled-chromium
    brave
    nyxt
    opera # unfree
    google-chrome # unfree
  ];
}
