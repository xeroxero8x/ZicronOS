{pkgs, ...}:

{
  programs.hyprlock.enable = true;

  home.file.".config/hypr/hyprlock.conf".text = ''
    # BACKGROUND
    background {
        monitor =
        path = ../hyprlock-bg.png
        blur_passes = 2
    }

    # GENERAL
    general {
        no_fade_in = false
        grace = 0
        disable_loading_bar = true
        ignore_empty_input = true
    }

    # INPUT FIELD
     input-field {
        monitor =
        size = 300, 60
        outline_thickness = 2
        dots_size = 0.2 # Scale of input-field height, 0.2 - 0.8
        dots_spacing = 0.2 # Scale of dots' absolute size, 0.0 - 1.0
        dots_center = true
        fade_on_empty = false
        font_family = JetBrainsMono
        placeholder_text = <i><span foreground="##cdd6f4"> password...</span></i>
        hide_input = true
        position = 0, 0
        halign = center
        valign = center
    }

    # TIME
    label {
        monitor =
        text = cmd[update:1000] echo "$(date +"%-I:%M%p")"
        color = $foreground
        font_size = 120
        font_family = JetBrains Mono Nerd Font Mono ExtraBold
        position = 0, 300
        halign = center
        valign = top
    }

    # USER
    label {
        monitor =
        text = Welcome back, $USER
        color = $foreground
        font_size = 25
        font_family = JetBrains Mono Nerd Font Mono
        position = 0, -40
        halign = center
        valign = center
    }

  '';
}
