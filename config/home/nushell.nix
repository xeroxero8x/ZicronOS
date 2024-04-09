{config, lib, pkgs, ...}:

let inherit (import ../../options.nix) flakeDir theShell hostname;in
{
  programs.nushell = {
    enable = true;
    shellAliases = {
      sv = "sudo nvim";
      flake-rebuild = "nh os switch --hostname ${hostname}";
      flake-update = "nh os switch --hostname ${hostname}";
      gcCleanup = "nix-collect-garbage --delete-old and sudo nix-collect-garbage -d and sudo /run/current-system/bin/switch-to-configuration boot";
      cd = "z";
      neofetch = "neofetch --ascii ~/.config/ascii-neofetch";
    };
  };
}
