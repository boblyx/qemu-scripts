set QEMU=<QEMU FOLDER PATH>
set QEMU_SYS="%QEMU%\qemu-system-x86_64.exe"
set QEMU_IMG="%QEMU%\qemu-img.exe"
set ISO=<ISO_PATH>
set IMG_FOLDER=<IMAGE_FOLDER PATH>
set IMG_PATH="%IMG_FOLDER%\volume.qcow2"
set IMG_SIZE=16G
set IMG_FMT=qcow2

mkdir %IMG_FOLDER%
call %QEMU_IMG% create -f %IMG_FMT% %IMG_PATH% %IMG_SIZE%
pause

