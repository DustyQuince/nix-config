{ config, lib, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    beancount
    fava
  ];
}
