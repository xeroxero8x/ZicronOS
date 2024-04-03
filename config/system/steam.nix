{ pkgs, config, lib, ... }:

let 
inherit (import ../../options.nix) steam ;
in lib.mkIf (steam == true){
  # Steam Configuration
  programs.steam = {
    enable = true;
    remotePlay.openFirewall = true;
    dedicatedServer.openFirewall = true;
  };
}
