{ config, lib, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    go
    go-langserver
    gocode
    gore
    gotests
    gomodifytags
    golangci-lint
  ];
}
