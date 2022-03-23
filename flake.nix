{
  description = "DustyQuince Machine Configuration";

  inputs = {
    # To update nixpkgs (and thus NixOS), pick the nixos-unstable rev from
    # https://status.nixos.org/
    #
    # This ensures that we always use the official nix cache.
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-21.11";
    home-manager.url = "github:nix-community/home-manager";
    nix-doom-emacs.url = "github:vlaci/nix-doom-emacs";
    emacs-overlay.url = "github:nix-community/emacs-overlay";
  };

  outputs = inputs@{ self, home-manager, nixpkgs, ... }:
    let
      system = "x86_64-linux";
      pkgs = import nixpkgs {
        inherit system;
        config.allowUnfree = true;
        overlays = [
          (import inputs.emacs-overlay)
        ];
      };
    in
      {
        nixosConfigurations = {
          nixos-desktop = nixpkgs.lib.nixosSystem {
              inherit system pkgs;
              modules =
                [
                  ./desktop/hardware-configuration.nix
                  ./features/virtualization.nix
                  ./common/system-settings.nix
                ];
          };
        };
      };
}
