{ config, lib, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [ vim neovim emacs graphviz ];
  environment.variables = {
    EDITOR = "nvim";
    VISUAL = "nvim";
    GOPATH = "~/computing/go";
  };
}
