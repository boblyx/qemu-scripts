# Windows QEMU Scripts
## `.bat` files
- All `.bat` files are to be run with Windows Command Prompt (cmd.exe)
- Note the semicolon usage. Some lines cannot use semicolons (to look into string concat)

## TODO
- Add more parameters for controlling display
- PowerShell Scripts

## Issues
- `WHPX` makes VM extremely fast, but may not work when booting cdrom for some installation ISOs. 
    - Tested Debian bookworm doesn't working properly when usign WHPX, but works using `haxm` or `tcg` as accelerator.