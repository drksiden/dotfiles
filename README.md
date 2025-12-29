# 🦀 My Rust-Powered Dotfiles (Omarchy Edition)

Welcome to my personal configuration repository. This setup is built on top of **Omarchy**, focusing on extreme performance, modern CLI aesthetics, and a workflow powered by **Rust** & **Zig** tools.

## 🛠 System Specs
* **Distro:** [Arch Linux](https://archlinux.org/) (Omarchy) 🏔️
* **WM:** [Hyprland](https://hyprland.org/) (Wayland)
* **Shell:** `zsh` + [Starship](https://starship.rs/)
* **Terminal:** [Ghostty](https://ghostty.org/) ⚡ (Fast, Zig-based)
* **Editor:** [Neovim](https://neovim.io/) (LazyVim setup) ⚡

## 🚀 The Toolset
Standard GNU utilities have been replaced with high-performance alternatives:
* `eza` (alt `ls`) — Icons, git-integration, and grid views.
* `bat` (alt `cat`) — Syntax highlighting and git-gutter integration.
* `zoxide` (alt `cd`) — Smart navigation that learns your habits.
* `yazi` — Blazing fast terminal file manager with image previews (Ghostty compatible).
* `bottom` (btm) — Modern system monitor with real-time charts.
* `tealdeer` (tldr) — Practical, example-based command cheatsheets.
* `delta` — Syntax-highlighted, side-by-side git diffs.

## 📦 Installation & Deployment

### 1. Clone the repository
```bash
git clone [https://github.com/drksiden/dotfiles.git](https://github.com/drksiden/dotfiles.git) ~/dotfiles
cd ~/dotfiles
```
### 2. Restore Packages
```bash
sudo pacman -S --needed - < pkglist.txt
```
### 3. Apply Configs (GNU Stow)
```bash
# Inside ~/dotfiles
stow zsh
stow ghostty
stow hypr
stow starship
stow helix
stow yazi
```
⌨️ Custom Workflow

    ls → eza with icons and directory-first grouping.

    cat → bat with disabled paging for short files.

    cd → z (zoxide) for instant directory jumping.

    y → launches yazi and automatically cds into the last folder on exit.

Maintained with ❤️ on Arch Linux.
