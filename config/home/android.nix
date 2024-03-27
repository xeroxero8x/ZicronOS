{config, pkgs, ...}:
let
  inherit (import ../../options.nix) androidDev;
in lib.mkIf (androidDev == true){
    programs = {
        android-tools.enable = true;
        heimdall-gui.enable = true;
        heimdall.enable = true;
      };
  }
