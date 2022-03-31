{
  description = "DustyQuince Machine Configuration";

  inputs = {
    # To update nixpkgs (and thus NixOS), pick the nixos-unstable rev from
    # https://status.nixos.org/
    #
    # This ensures that we always use the official nix cache.
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-21.11";
    home-manager.url = "github:nix-community/home-manager";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";
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
      mkComputer = extraModules: nixpkgs.lib.nixosSystem {
        inherit system pkgs;
        modules = (
          [
            ./common/system-settings.nix
            home-manager.nixosModules.home-manager
            {
              home-manager.useGlobalPkgs = true;
              home-manager.useUserPackages = true;
              home-manager.users.dustyquince = import ./home.nix
                {
                  inherit system pkgs;
                };
            }
          ] ++ extraModules
        );
      };
      in
      {
        nixosConfigurations = {
          nixos-desktop = mkComputer
            [
              ./hosts/desktop.nix
              ./features/audio.nix
              ./features/printing.nix
              ./features/virtualization.nix
              ./programs/browsers.nix
              ./programs/databases.nix
              ./programs/editors.nix
              ./programs/graphical-technical-tools.nix
              ./programs/media-management.nix
              ./programs/messaging.nix
              ./programs/modern-unix.nix
              ./programs/steam.nix
              ./programs/terminal-misc.nix
              ./users/dustyquince.nix
              # TODO xfce-i3
              ./ui/gnome.nix
              ./ui/x-keyboard.nix
              ./coding-tools/general.nix
              ./coding-tools/beancount.nix
              ./coding-tools/haskell.nix
              ./coding-tools/javascript.nix
              ./coding-tools/jvm.nix
              ./coding-tools/nix-lang.nix
              ./coding-tools/python.nix
              ./services/cron.nix
              ./services/openssh.nix
            ];
          nixos-laptop = mkComputer
            [
              ./hosts/framework-laptop.nix
              ./features/audio.nix
              ./features/printing.nix
              ./features/virtualization.nix
              ./programs/browsers.nix
              ./programs/databases.nix
              ./programs/editors.nix
              ./programs/graphical-technical-tools.nix
              ./programs/media-management.nix
              ./programs/messaging.nix
              ./programs/modern-unix.nix
              ./programs/steam.nix
              ./programs/terminal-misc.nix
              ./users/dustyquince.nix
              ./ui/xfce-i3.nix
              ./ui/x-keyboard.nix
              ./coding-tools/general.nix
              ./coding-tools/beancount.nix
              ./coding-tools/haskell.nix
              ./coding-tools/javascript.nix
              ./coding-tools/jvm.nix
              ./coding-tools/nix-lang.nix
              ./coding-tools/python.nix
              ./services/cron.nix
              ./services/openssh.nix
            ];
        };
      };
}
