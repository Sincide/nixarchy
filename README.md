# Archy

Turn a fresh Arch installation into a fully-configured, beautiful, and modern web development system based on Hyprland by running a single command. That's the one-line pitch for Archy (like it was for Omakub). No need to write bespoke configs for every essential tool just to get started or to be up on all the latest command-line tools. Archy is an opinionated take on what Linux can be at its best.

## Installation

Archy installs from `~/archy` and symlinks all configurations from there. This makes it easy to track changes and update your system configuration with git.

### Prerequisites

- A fresh Arch Linux minimal installation
- Git installed
- Internet connection

### Install

1. Clone this repository to `~/archy`:

```bash
cd ~
git clone https://github.com/basecamp/archy.git archy
```

2. Run the installer:

```bash
cd ~/archy
./boot.sh
```

The installer will:
- Install all required packages
- Symlink configurations from `~/archy` to appropriate locations
- Set up themes and branding
- Configure hardware support
- Install a beautiful Hyprland-based desktop environment

### Post-Installation

After installation, your system will reboot to a TTY login prompt. To start Hyprland:

```bash
Hyprland
```

All configuration files are symlinked from `~/archy`, so you can:

- Track your configuration changes with git
- Easily update configurations by editing files in `~/archy`
- Share your configuration by committing changes back to your fork

## Features

- **TTY Boot**: Clean boot to TTY, no display manager or autologin
- **Fish Shell**: Modern shell with smart autocompletions (bash scripts for system)
- **Hyprland**: Modern Wayland compositor with beautiful animations
- **12 Color Themes**: Multiple pre-configured color schemes
- **Development Tools**: Pre-configured development environment with Docker, Ruby, and more
- **Hardware Support**: Battery monitoring, Bluetooth, printers, and more
- **Custom Scripts**: 70+ utility scripts for system management
- **Automatic Updates**: Built-in update system with migration support
- **Symlinked Configs**: Everything runs from ~/archy for easy git tracking

## Configuration

All configuration files are symlinked from `~/archy/config/` to `~/.config/`. You can edit them directly in the `~/archy` directory and changes will take effect immediately (or after reloading the relevant service).

## Updating

To update Archy:

```bash
cd ~/archy
git pull
archy-update
```

## License

Archy is released under the [MIT License](https://opensource.org/licenses/MIT).

