{ config, lib, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [ vim neovim emacs graphviz ];
  programs.neovim.defaultEditor = true;
}
