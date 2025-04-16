# Config Files

This repository contains configuration files, dotfiles, and Docker Compose setups for services I run across my **Arch Linux** and **NixOS** systems. It includes everything from terminal, editor, and window manager configs to Docker-based self-hosted services, structured for ease of use and reproducibility.

---

## 📁 Repository Structure

```
├── arch-config/            # Arch Linux configuration files
│   ├── alacritty/          # Alacritty terminal config
│   ├── dunst/              # Dunst notification daemon config
│   ├── gtk-3.0/            # GTK UI settings
│   ├── i3/                 # i3 window manager config
│   ├── nvim/               # Neovim configuration
│   ├── polybar/            # Polybar status bar configuration
│   ├── rofi/               # Rofi launcher configuration
│   └── theme-switcher/     # Theme and wallpaper switcher scripts
│
├── docker-compose/         # Docker Compose files for self-hosted services
│   └── services.yaml
│
├── dotfiles/               # Dotfiles for Hyprland and other Wayland apps
│   ├── eww/                # Eww widgets
│   ├── hypr/               # Hyprland, hyprlock, hypridle configs
│   ├── kitty/              # Kitty terminal emulator configs
│   ├── mako/               # Mako Wayland notifier
│   ├── nvim/               # Neovim (used in Hyprland setup)
│   ├── waybar/             # Waybar config and modules
│   └── wofi/               # Wofi launcher
│
├── nixos-config/           # NixOS flake-based configuration
│   └── nixos/
│       ├── flake.nix
│       ├── flake.lock
│       ├── hosts/
│       │   └── hyperland/  # Host-specific config for my Hyprland setup
│       └── modules/        # Custom NixOS modules and Home Manager
│           ├── nixos/
│           └── home-manager/
│
├── rice/
│   └── hyperland_rice_preview1.mp4   # Preview of the current rice setup
│
└── LICENSE
    README.md
```

---

## ⚙️ What’s Inside

### 🐧 Arch Configs

Configuration files for terminal, polybar, dunst, rofi, GTK, Neovim, and more — optimized for a minimal and responsive i3 setup on Arch Linux.

### 🧳 NixOS Config

A flake-based modular NixOS configuration using `Home Manager`, with a dedicated setup for my **Hyprland** Wayland desktop. Cleanly separated into host-based and reusable modules.

### 🧹 Dotfiles

All dotfiles for Hyprland setup including:

- **Waybar** (status bar),
- **Eww** (widgets),
- **Kitty**, **Wofi**, **Mako**, **Hyprlock**, and more.

Scripts and styles are fine-tuned for aesthetics and responsiveness.

### 🐳 Docker Compose Services

A collection of Compose files for deploying various self-hosted services:

- **changedetection.io** – Web change monitoring
- **coder** – Cloud IDE
- **filebrowser** – File manager UI
- **homarr** – Dashboard manager
- **homepage** – Homepage with app shortcuts
- **mealie** – Recipe and meal planner
- **navidrome** – Self-hosted music streaming
- **nextcloud** – Productivity platform
- **nexterm** – SSH/VNC/RDP management
- **pingvin-share** – File sharing tool
- **strling-pdf** – PDF manager
- **yt-dlp** – Video downloader
- **jellyfin** – Media server
- **kavita** – Ebook server
- **speedtest-tracker** – Internet speed tracker
- **syncthing** – File synchronization

---

## 🚀 Usage

### Clone the repository

```bash
git clone https://github.com/Viraj-S45/config-files
cd config-files
```

### For Docker Services

Navigate to any service inside `docker-compose/` and run:

```bash
docker-compose -f <service-docker-compose.yaml> up -d
```

Make sure to check service-specific `.env` or volume mounts for customization.

### For Arch or NixOS Configs

Symlink or copy relevant config files to your system paths.  
For NixOS, run the flake configuration using:

```bash
sudo nixos-rebuild switch --flake .#hostname
```

---

## 🎨 Rice Preview

Check out the `rice/hyperland_rice_preview1.mp4` to see my current Hyprland rice in action.

---

## 🙌 Contributions

Feel free to fork, submit PRs, or raise issues. If you have suggestions or improvements, I’d love to hear from you!

---

## 📄 License

This repository is licensed under the **MIT License**.

---

## 🙏 Acknowledgments

Thanks to the amazing open-source devs and communities behind all these tools, themes, and utilities.
