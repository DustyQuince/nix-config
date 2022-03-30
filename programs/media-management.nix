{ config, lib, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
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
