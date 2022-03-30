{ config, lib, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    steam-run-native
    (steam.override { extraPkgs = pkgs: [ mono gtk3 gtk3-x11 libgdiplus zlib ];
                      nativeOnly = true; }).run
    (steam.override { withPrimus = true; extraPkgs = pkgs: [ bumblebee glxinfo ];
                      nativeOnly = true; }).run
    (steam.override { withJava = true; })
    steamcmd
    eidolon
    pidgin-opensteamworks
    matterbridge
    steamcontroller
    sc-controller
    xboxdrv
  ];

}
