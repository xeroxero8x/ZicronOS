# Welcome to ZicronOS Repo

<div align="center">
<img align="center" width="250px" src="https://github.com/xeroxero8x/asset_img/blob/main/img/logo.png"> 
<br> 
<h1> ❄️ NixOS Config</h1>

<img align="center" width="80%" src="https://gitlab.com/Zaney/zaneyos/-/raw/main/config/home/files/media/demo.jpg" />

</div> <br>

&ensp; [<kbd> <br> Install <br> </kbd>](https://github.com/xeroxero8x/ZicronOS?tab=readme-ov-file#%EF%B8%8F-install)&ensp;

#### 🍖 Requirements

- You must be running on NixOS.
- Must have installed using GPT & UEFI.
- Change settings through script or manually editing options.nix file.

#### 🎹 Pipewire & Notification Menu Controls

- We are using the latest and greatest audio solution for Linux. Not to mention you will have media and volume controls in the notification center available in the top bar.

#### 🏇 Optimized Workflow, tmpfs For Speed, & Simple Yet Elegant Neovim With Lazyvim As Distro

- Using scratchpads with Hyprland for increased functionality and effeciency.
- A tmpfs for the /tmp directory is created improving rebuild time and reducing strain on hdd/ssd.

<div align="center">

![](./config/home/files/media/demo.mp4)


</div>

#### 📦 How To Install Packages?

- You can search the [Nix Packages](https://search.nixos.org/packages?) & [Options](https://search.nixos.org/options?) pages for what a package may be named or if it has options available that take care of configuration hurdles you may face.
- To add a package there are the packages.nix files located in config/system and config/home folders. One is for programs available system wide and the other for your users environment only.

#### 🙋 Having Issues / Questions?

- Please feel free to raise an issue on the repo, please label a feature request with the title beginning with [feature request], thank you!
- Contact me on [Telegram](https://t.me/DM008S) as well, for a potentially faster response.

### ⬇️ Install


#### 🦽 Manual:

Run this command to ensure Git & Vim are installed:

```bash
nix-shell -p git vim
```

Clone this repo & enter it:

```bash
git clone https://github.com/xeroxero8x/zicronos.git
cd zicronos
```

- *You should stay in this folder for the rest of the install*

**🪧🪧🪧 Edit options.nix 🪧🪧🪧**

Generate your hardware.nix like so:

```bash
nixos-generate-config --show-hardware-config > hardware.nix
```

Run this to enable flakes and install the flake replacing hostname with whatever you put in the options.nix file:

```bash
NIX_CONFIG="experimental-features = nix-command flakes" 
sudo nixos-rebuild switch --flake .#hostname
```

This Flake's user will have the password be set for them as *password*. If you want to change it run a command replacing password with whatever you want to be your password. You then need to copy the output that it gives you like below into your hashedPassword in the system.nix file.

```bash
  mkpasswd -m sha-512 yourpassword

$6$JABgp4VNnz1sC9PD$kCkGdV3U4jzEDjWurDwcEeC4yhMHRZ.R.o0XfhYW1Vod6Wi7zrWWTHB3a7FzZzVaCSZhaB5itqqPHryN0GI6D/
```

Now when you want to rebuild the configuration you have access to an alias called flake-rebuild that will rebuild the flake based of the flakeDir variable you set in options.nix!

Hope you enjoy!
