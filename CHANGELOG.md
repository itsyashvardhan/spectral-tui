# Changelog

All notable changes to **SPECTRE** will be documented in this file.

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
- Install scripts are available via `yashvs.dev/spectre/install.sh`.

---
*“Better to be a ghost in the machine than a cog in the wheel.”*
