{ pkgs, config, ...}:

{
  home.file.".config/helix/config.toml".text = ''
    theme = "tokyonight"

    [editor]
    line-number = "relative"

    [editor.cursor-shape]
    insert = "bar"
    normal = "block"
    select = "underline"

    [key.normal]
    C-s = ":w"
  '';
  home.file.".config/helix/language.toml".text = ''
    [[language]]
    name = "nix"
    formatter = {command = "nixpkgs-fmt"}
    
    
  '';
}
