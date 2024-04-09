{config, lib, pkgs, ...}:
let inherit (import ../../options.nix) theShell;in
{
  programs.zoxide = {
    enable = true;
    enableZshIntegration = true;
    enableBashIntegration = true;
    enableNushellIntegration = true;
  };
}
