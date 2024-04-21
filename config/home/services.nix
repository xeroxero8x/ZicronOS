{pkgs, config, lib, ...}:
let
  inherit (import ../../options.nix) kdeconnect;
in 
{
    services = {
        kdeconnect.enable = kdeconnect;

      };
  }
