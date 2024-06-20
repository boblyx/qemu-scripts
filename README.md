# QEMU Scripts
- A bunch of scripts to create VM images with using QEMU.
- Created because WSL may not be reliable, and QEMU may be used as a last resort.

## Roadmap
- [ ] Windows
    - [x] `.bat` files using `cmd.exe` to automate VM creation / boot
    - [ ] `.ps1` files for `powershell.exe` to automate VM creation / boot
- [ ] Linux
    - [ ] `.sh` files for `bash` to automate VM creation / boot
- [ ] Custom GUI
    - [ ] Possibly create a QtEmu alternative because QtEmu features are quite limited.
        - e.g., doesn't allow args for network e.g., `hostfwd`

## Motivation
- Inspired by a colleague who got BSOD from trying to install Ubuntu on WSL Windows 10.