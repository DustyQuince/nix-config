{ config, lib, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    docker-compose
    gdb
    clang
    clang-tools
    irony-server # code completion, eldoc and syntax checking systems for cc
    ccls # LSP for cc
    glslang # glsl code completion
    vale
    rtags
  ];
}
