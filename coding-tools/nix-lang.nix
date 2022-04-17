{ config, lib, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    niv
    nox
    lorri
    cachix
    nixfmt
  ];
}
