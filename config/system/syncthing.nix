{ pkgs, config, lib, ... }:

let inherit (import ../../options.nix) syncthing username userHome; in
lib.mkIf (syncthing == true) {
    services = {
        syncthing = {
        enable = true;
        user = "${username}";
        dataDir = "/home/${username}/syncthing";    # Default folder for new synced folders
        configDir = "/home/${username}/.config/syncthing";   # Folder for Syncthing's settings and keys
        package = pkgs.syncthing;
        };
    };
}
