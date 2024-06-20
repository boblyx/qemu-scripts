set QEMU=<QEMU FOLDER PATH>
set QEMU_SYS="%QEMU%\qemu-system-x86_64.exe"
set QEMU_IMG="%QEMU%\qemu-img.exe"
set ISO=<ISO_PATH>
set IMG_FOLDER=<IMAGE_FOLDER PATH>
set IMG_PATH="%IMG_FOLDER%\volume.qcow2"
set IMG_SIZE=16G
set IMG_FMT=qcow2

(call %QEMU_SYS% ^
-cdrom %ISO% ^
-accel whpx ^
-smp 4 ^
-cpu qemu64-v1 ^
-machine q35 ^
-drive file=%IMG_PATH% ^
-m 7680M ^
--accel tcg,thread=multi ^
-display gtk ^
-usb ^
-device usb-tablet)
pause

