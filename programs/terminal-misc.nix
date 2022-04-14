{ config, lib, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    git
    elvish
    stt
    xclip
    unrar
    unzip
    zip
    texlive.combined.scheme-basic
    pandoc
    cmatrix # not actually useful, but fun
    thefuck
    fish
  ];
}
