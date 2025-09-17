# Super DNF

A dnf wrapper which adds aliases for common functions.

Inspired by [KDesp73/xbps](https://github.com/KDesp73/xbps).

## Features

- Shorter aliases for common functions in dnf
- Still pass arguments to dnf
- Fast and efficient Nim based parser

## Usage

```plain
install, i, +          Install one or more packages
remove, rm, -          Remove one or more packages
search, /              Search for packages by keywords
info, !                Show package information
update, upgrade, u     Update installed pacakges
list, ls               List installed packages
autoremove, autorm     Remove unused packages
clean                  Cleam dnf cache
help, h                Show help
```

## Example

```bash
super + nvim mold sl    # Install multiple packages
xbps - firefox          # Remove firefox
xbps / ffmpeg           # Search for packages with keyword ffmpeg
xbps ! hyprland         # View info for hyprland
xbps u                  # Update packages
xbps ls                 # List installed packages
```

## Install

You need the [Nim](https://nim-lang.org) compiler to be installed to compile the program.

```bash
git clone https://github.com/imagineeeinc/superdnf
cd superdnf
nimble build -d:release
sudo ./install.sh
```
