{ pkgs, config, ...}:

{
  home.file.".config/helix/config.toml".text = ''
  {
    theme = "tokyonight_storm"

    [editor.cursor-shape]
    insert = "bar"
    normal = "block"
    select = "underline"
  };
}
