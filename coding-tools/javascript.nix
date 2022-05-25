{ config, lib, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    nodejs
    nodePackages.js-beautify
    deno
    purescript
    nodePackages.pulp
    nodePackages.node2nix
    nodePackages.prettier
    nodePackages.eslint
    emacs27Packages.tide
  ];

}
