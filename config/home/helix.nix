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
    [keys.normal]
    C-s = ":x"
    [keys.insert]
    C-s = [":w", "normal_mode"]
  '';
  home.file.".config/helix/language.toml".text = ''
    [[language]]
    name = "nix"
    language-servers =[ "ncl" ]
    formatter = {command = "nixpkgs-fmt"}

    [[language]]
    name = "markdown"
    language-servers = [ "marksman" "ltex-ls"]

    [[language]]
    name = "toml"
    formatter = { command = "taplo", args = ["fmt", "-"] }

  '';
}
