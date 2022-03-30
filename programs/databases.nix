{ config, lib, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    sqlite
  ];

  services.couchdb = {
    enable = true;
    adminUser = "admin";
    adminPass =
      "-pbkdf2-adae6ee589865517bdd279149400237b5e0bdf69,5ffa3ff6471d4cbda5e444e5e34b1c51,10";
    package = pkgs.couchdb3;
  };

  services.postgresql = {
    enable = true;
    package = pkgs.postgresql_10;
  };
}
