{ config, lib, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    python3
    python-language-server
    black
    pipenv
    python39Packages.pyflakes
    python39Packages.isort
    python39Packages.nose
    python39Packages.pytest
  ];
}
