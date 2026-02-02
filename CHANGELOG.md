# Changelog

All notable changes to **SPECTRAL** will be documented in this file.

## [1.0.2] - 2026-02-02

### 🎨 Rebranding
- **Project Rename**: Official rebrand from SPECTRE to SPECTRAL
- **Repository**: Now hosted at `spectral-tui`
- **Updated ASCII Logo**: New SPECTRAL branding in TUI interface
- **Config File**: Migrated from `.spectre.json` to `.spectral.json`
- **Theme**: Default theme renamed from "spectre" to "spectral"

### 📦 Distribution
- Fresh build with updated branding
- Updated install scripts and documentation
- All GitHub release assets updated

## [1.0.1] - 2026-01-27

### 📦 Packaging
- **Enhanced metadata** for Linux .deb packages
- Added AppStream metadata for better app store integration
- Improved copyright and licensing information
- Fixed package icon display in GUI installers

## [1.0.0] - 2026-01-26

### 🚀 Added
- **Multi-Platform Support**: Full compatibility for Linux, macOS, and Windows.
- **Native System Telemetry**: 
    - Windows: Integrated `wmic` hooks for CPU and RAM monitoring.
    - macOS: Optimized `system_profiler` and `vm_stat` parsing.
    - Linux: High-precision `/proc/` and `shutil` based telemetry.
- **Universal Remote Installer**: A one-line `curl | bash` installation process hosted via portfolio site.
- **Automated Build pipeline**: 
    - `build_deb.sh` for Debian/Ubuntu packages.
    - `build_windows.bat` for standalone Windows binaries.
    - `build_macos.sh` for native macOS bundles.
- **Enhanced TUI**: Minimalist, high-performance `curses` interface with cross-platform key-mapping.
- **Embedded Terminal**: Cross-platform command execution (PowerShell/CMD on Windows, Zsh/Bash on Mac/Linux).

### 🔧 Changed
- **Branding**: Official transition to SPECTRE (formerly Ghost).
- **Disk Usage**: Switched to `shutil.disk_usage` for cross-platform reliability.
- **Ping Logic**: Intelligent flag detection (`-n` for Windows, `-c` for Unix).

### 📦 Distribution
- Binaries are now officially hosted on GitHub Releases.
- Install scripts are available via `yashvs.dev/spectral/install.sh`.

---
*"Better to be a ghost in the machine than a cog in the wheel."*
