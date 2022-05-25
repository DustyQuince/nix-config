{ config, lib, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    go
    gopls
    gocode
    gore
    gotests
    gomodifytags
    golangci-lint
  ];
  environment.variables = { GOPATH = "/home/dustyquince/computing/go"; };
}
