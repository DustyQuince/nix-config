{ config, lib, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [ html-tidy nodePackages.stylelint ];
}
