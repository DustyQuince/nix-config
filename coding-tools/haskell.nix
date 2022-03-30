{ config, lib, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    ghc
    haskell-language-server
    haskellPackages.cabal-install
    stack
    ormolu
  ];
}
