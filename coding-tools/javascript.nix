{ config, lib, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    nodejs
    nodePackages.js-beautify
    deno
    # purescript
    purescript
    nodePackages.pulp
  ];

}
