{ config, lib, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    bat
    exa
    lsd
    delta
    dust
    duf
    broot
    fd
    ripgrep
    ag
    fzf
    mcfly
    choose
    jq
    sd
    cheat
    tldr
    bottom
    glances
    gtop
    hyperfine
    gping
    procs
    httpie
    curlie
    xh
    zoxide
    dog
    # not in https://github.com/ibraheemdev/modern-unix, but useful and related
    wget
    curl
    jc
    ripgrep-all
  ];
}
