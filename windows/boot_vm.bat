set QEMU=<QEMU FOLDER PATH>
set QEMU_SYS="%QEMU%\qemu-system-x86_64.exe"
set QEMU_IMG="%QEMU%\qemu-img.exe"
set ISO=<ISO_PATH>
set IMG_FOLDER=<IMAGE_FOLDER PATH>
set IMG_PATH="%IMG_FOLDER%\volume.qcow2"
set IMG_SIZE=16G
set IMG_FMT=qcow2

(call %QEMU% ^
-accel whpx ^
-smp 4 ^
-cpu qemu64-v1 ^
-machine q35 ^
-drive file=%IMG_PATH% ^
-m 7680M ^
--accel tcg,thread=multi ^
-display gtk ^
-usb ^
-device usb-tablet ^
-nic user)
rem -nic user,hostfwd=tcp::80-:80,hostfwd=tcp::6379-:6379,hostfwd=tcp::9000-:9000,hostfwd=tcp::9001-:9001,hostfwd=tcp::3000-:3000,hostfwd=tcp::8001-:8001,hostfwd=tcp::1080-:1080,hostfwd=tcp::1025-:1025,hostfwd=tcp::16543-:16543,hostfwd=tcp::8080-:8080

pause

