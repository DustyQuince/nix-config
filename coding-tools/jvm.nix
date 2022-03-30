{ config, lib, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    jdk11
    clojure
  ];
}
