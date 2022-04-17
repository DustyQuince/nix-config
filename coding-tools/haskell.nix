{ config, lib, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    ghc
    stack
    ormolu
    haskell-language-server
    haskellPackages.cabal-install
    haskellPackages.brittany
    haskellPackages.hls-brittany-plugin
    haskellPackages.hoogle
  ];
}
