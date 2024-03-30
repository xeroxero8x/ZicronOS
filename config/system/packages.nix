{ pkgs, config, inputs, ... }:

{
  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;

  # List System Programs
  environment.systemPackages = with pkgs; [
    wget curl git cmatrix lolcat neofetch htop btop libvirt
    polkit_gnome lm_sensors unzip unrar libnotify p7zip
    v4l-utils ydotool wl-clipboard socat cowsay lsd lshw
    pkg-config meson hugo gnumake ninja go nodejs symbola
    noto-fonts-color-emoji material-icons brightnessctl
    toybox swappy ripgrep appimage-run #virt-viewer
    networkmanagerapplet yad playerctl nh bat lazygit
    
  ];

  programs = {
    steam.gamescopeSession.enable = false;
    dconf.enable = true;
    adb.enable = true;
    seahorse.enable=false;
    hyprland = {
      enable = true;
      package = inputs.hyprland.packages.${pkgs.system}.hyprland;
      xwayland.enable = true;
    };
    fuse.userAllowOther = true;
    mtr.enable = true;
    gnupg.agent = {
      enable = false;
      enableSSHSupport = false;
    };
    virt-manager.enable = false;
  };

  virtualisation.libvirtd.enable = false;
}
