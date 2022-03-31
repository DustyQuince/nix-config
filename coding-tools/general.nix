{ config, lib, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    docker-compose
    gdb
    irony-server #code completion, eldoc and syntax checking systems for cc
    ccls # LSP for cc
    vale
  ];
}
