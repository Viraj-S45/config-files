# Edit this configuration file to define what should be installed on
# your system. Help is available in the configuration.nix(5) man page, on
# https://search.nixos.org/options and in the NixOS manual (`nixos-help`).

{ config, lib, pkgs, ... }:

{
  imports =
    [ # Include the results of the hardware scan.
      ./hardware-configuration.nix
      
    ];

  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  # services.gnome.gnome-keyring.enable = true;
  # security.pam.services.gdm-password.enableGnomeKeyring = true;
  programs.seahorse.enable = true; 
  # Make sure PAM login sessions enable gnome-keyring unlocking
  #security.pam.services.login.enableGnomeKeyring = true;
  programs.waybar.enable = true;

  # Use the systemd-boot EFI boot loader.
  # boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
  boot.loader.grub.enable = true;
  boot.loader.grub.devices = [ "nodev" ];
  boot.loader.grub.efiSupport = true;
  boot.loader.grub.useOSProber = true;
# change virajs to your username
  networking.hostName = "virajs"; # Define your hostname.
  # Pick only one of the below networking options.
  # networking.wireless.enable = true;  # Enables wireless support via wpa_supplicant.
  networking.networkmanager.enable = true;  # Easiest to use and most distros use this by default.
  


  # Set your time zone.
  time.timeZone = "Asia/Kolkata";
  i18n.defaultLocale = "en_US.UTF-8";
  nixpkgs.config.allowUnfree = true;  

  programs.hyprland.enable = true;
  services.greetd = {
    enable = true;
    settings.default_session = {
      command = "Hyprland";
      user = "virajs";
    };
 }; 
  # Enable sound.
  services.pulseaudio.enable = false;
  
  security.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
    jack.enable = true;
   };
  
 
  # Enable touchpad support (enabled default in most desktopManager).
  services.libinput.enable = true;

  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.virajs = {
    isNormalUser = true;
    extraGroups = [ "wheel" ]; # Enable ‘sudo’ for the user.
    packages = with pkgs; [
      tree
    ];
  };

  environment.systemPackages = with pkgs; [

  # System packages / Daemons
    bluez # bluetooth daemon
    pipewire # audio daemon
    libnotify # nofi service
    mako # noti daemon
    polkit           # Privilege management daemon
    hyprpolkitagent # Polkit authentication agent
    
    docker         # Container runtime (requires systemd)
    vim # Text editor
    neovim # Vim editor
    bibata-cursors
    sound-theme-freedesktop
    alsa-utils
    bash
    tiramisu
    
    
    wirelesstools 
    wpa_supplicant 
   ];


       # --Fonts--

   fonts.packages = with pkgs; [
   
     #meslo-lgs-nf           # Meslo LG Nerd Font (patched for icons)  
     #meslo-lg               # Meslo LG font (non-nerd version)  
     jetbrains-mono         # JetBrains Mono font (optimized for coding)  
     font-awesome
     font-awesome_5
     roboto
     #noto-fonts
     #noto-fonts-cjk-sans
     #noto-fonts-emoji
     #liberation_ttf
     #fira-code
     #fira-code-symbols
     #mplus-outline-fonts.githubRelease
     #dina-font
     #proggyfonts
     #font-awesome
     #powerline-fonts
     #powerline-symbols
          

     
   ];
# ++ builtins.filter lib.attrsets.isDerivation (builtins.attrValues pkgs.nerd-fonts)
  xdg.portal.enable = true;
  xdg.portal.extraPortals = [ pkgs.xdg-desktop-portal-gtk ];

  

# --Password less sudo for user--
# change virajs to your username
   security.sudo.extraRules = [{
     users = ["virajs"];
     commands = [{ command = "ALL";
       options = ["NOPASSWD"];
       }];
     }];

  # List services that you want to enable:

  hardware.bluetooth.enable = true;
    # Enable the OpenSSH daemon.
  services.openssh.enable = true;

  system.stateVersion = "24.11"; # Did you read the comment?


}


