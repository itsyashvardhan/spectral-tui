# How to Build Spectre Releases

Binaries must be built on their respective native operating systems.

## 🐧 Linux (.deb)
**Status**: ✅ Built
**Artifact**: `spectre_1.0.0_all.deb`

To rebuild:
```bash
./artifacts/build_deb.sh
```

## 🪟 Windows (.zip / .exe)
**Status**: ⏳ Pending Build
**Artifact**: `spectre_v1.0.0_win64.zip`

**Instructions**:
1.  Clone/Copy this repository to a Windows machine.
2.  Ensure Python 3 is installed.
3.  Double-click `artifacts\build_windows.bat`.
    *   *This will automatically install dependencies (pyinstaller, windows-curses), build the exe, and zip it.*
4.  The file will appear in the `releases/` folder.

## 🍎 macOS (.dmg)
**Status**: ⏳ Pending Build
**Artifact**: `spectre_v1.0.0_macos.dmg`

**Instructions**:
1.  Clone/Copy this repository to a Mac.
2.  Open Terminal and go to the project folder.
3.  Run:
    ```bash
    sh artifacts/build_macos.sh
    ```
4.  The `.dmg` installer will appear in the `releases/` folder.
