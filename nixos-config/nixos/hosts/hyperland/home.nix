{ config, pkgs, ... }:

{
  # change virajs to your user name
  home.username = "virajs";
  home.homeDirectory = "/home/virajs";
  home.stateVersion = "24.11";

  home.packages = with pkgs; [

  # -- Terminal & CLI Tools --

    lazygit     # Git TUI
    lazydocker  # Docker TUI
    ripgrep     # Fast search
    neofetch    # System info
    htop        # Process viewer
    starship    # Shell prompt
    git         # VCS
    vim         # Text editor
    neovim      # Vim editor
    wget        # Downloader
    lua         # Scripting

  # -- Development Tools --

    sublime          # GUI editor
    vscode           # IDE
    notable          # Notes (Markdown)
    github-desktop   # GitHub GUI

  # -- Theming / Appearance --

    nwg-look             # GTK config
    everforest-gtk-theme # GTK theme
    font-awesome         # Icon font
    font-manager         # Font manager

  # -- Hyprland Utilities --

    hyprshot    # Screenshot
    hyprlock    # Lock screen
    hypridle    # Idle daemon
    # hyprpaper   # Wallpaper
    hyprsunset

    eww            # Bar and widget framework
    swww           # Animated wallpaper transitions    

  # -- Multimedia / Utilities --

    barrier       # Share keyboard and mouse
    gimp          # Image editor
    inkscape      # Vector editor
    spicetify-cli # Customize Spotify UI
    spotdl        # Download Spotify songs
    #normcap       # OCR tool

    brave              # Privacy-focused browse
    blueman           # bluetooth gui
    seahorse         # keyring gui
    networkmanagerapplet # Network management GUI
    nextcloud-client     # Cloud file sync client
    gparted        # Partition manager GUI

  # -- File Management --
  
    kdePackages.ark  # Archive manager
    # clipman          # Clipboard manager
    xfce.thunar      # Lightweight file manager

  # -- Terminals & Launchers   --
    kitty          # GPU-accelerated terminal
    ags
    wofi             # Wayland application launcher
    vesktop
    
    # cliphist
    copyq
    brightnessctl
    gawk
    coreutils
    # libcanberra
    libcanberra-gtk3
    pamixer
    nettools
    iproute2 
    pavucontrol
    xfce.thunar-archive-plugin
    xfce.thunar-volman
    xfce.thunar-archive-plugin
    wallust
    blueberry
    mpv
    obs-studio
    obsidian
    wf-recorder
    screenkey





  ];

  home.file = {

  };

  home.sessionVariables = {

  };

  programs.home-manager.enable = true;
}
