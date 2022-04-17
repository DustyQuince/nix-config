{ config, lib, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    vlc
    gimp
    digikam
    blender
    super-slicer
    freecad
    openscad
    kiwix
    inkscape-with-extensions
    okular
    calibre
    libreoffice
    hugo
  ];
}
