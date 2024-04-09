{config, lib, pkgs, ...}:
let inherit (import ../../options.nix) theShell;in
{
  programs.zoxide = {
    enable = true;
    enableZshIntegration = if theShell == "zsh" then true else false;
    enableBashIntegration = if theShell == "bash" then true else false;
    enableNushellIntegration = if theShell == "nushell" then true else false;
  };
}
