{config, lib, pkgs, ...}:

let inherit (import ../../options.nix) flakeDir theShell hostname;in
lib.mkIf (theShell == "nushell") {
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
    extraConfig = let 
    conf = builtins.toJSON {
      show_banner=false;
      edit_mode="vi";      
      shell_integration = true;
      ls.clickable_links = true;
      rm.always_trash = true;
      table = {
        mode = "rounded";
        index_mode = "always";
        header_on_separator = false;
      };  
      cursor_shape = {
        vi_insert= "line";
        vi_normal = "block";
      };
    };
in ''
   $env.config = ${conf}; 
''; 
  };
}
