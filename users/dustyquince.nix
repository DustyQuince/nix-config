{ config, lib, pkgs, ... }:

{
  programs.zsh.enable = true;

  users.users.dustyquince = {
    isNormalUser = true;
    extraGroups = [ "wheel" "docker" ]; # Enable ‘sudo’ for the user.
    shell = pkgs.zsh;
    hashedPassword = "$6$nhupSF2Neq$m61opyOxxlZAt10pdgSw/ORYlLOGa8efAF7dfKVRas8Wl4hVaSUI4d5poAk9VnMFY/xejKkZjst26INwMWrZZ.";
  };

  nix.trustedUsers = [ "root" "dustyquince" ];

  environment.binsh = "${pkgs.bash}/bin/bash";
}
