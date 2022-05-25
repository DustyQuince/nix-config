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
  environment.variables = { GOPATH = "/home/dustyquince/computing/go"; };
}
