REM 用法 : fsutil hardlink create <new filename> <existing filename>
REM 例如 : fsutil hardlink create c:\foo.txt c:\bar.txt
linux 用法：ln [-s] sourcefile targetfile
-s相当于windows的快捷方式，不带参数为硬链接
p:
cd z:\各类软件\网络软件\英保通服务\Tools\pxe
set riqi=%date:~0,4%%date:~5,2%%date:~8,2%
set shijian=%time:~0,2%%time:~3,2%%time:~6,2%
set rq=%riqi%%shijian%
move /Y github\ipxe\src\config\general.h ipxe\bootstrap\%rq%_general.h
del github\ipxe\src\config\general.h
fsutil hardlink create github\ipxe\src\config\general.h ipxe\bootstrap\general.h
fsutil hardlink create github\ipxe\src\default ipxe\bootstrap\default
fsutil hardlink create ipxe\ipxe.pxe github\ipxe\src\bin\ipxe.pxe
fsutil hardlink create ipxe\ipxe.iso github\ipxe\src\bin\ipxe.iso
fsutil hardlink create ipxe\ipxe.usb github\ipxe\src\bin\ipxe.usb
fsutil hardlink create ipxe\ipxe.lkrn github\ipxe\src\bin\ipxe.lkrn
fsutil hardlink create ipxe\undionly.kpxe github\ipxe\src\bin\undionly.kpxe
fsutil hardlink create ipxe\ipxe.efi github\ipxe\src\bin-x86_64-efi\ipxe.efi
pause



::fsutil hardlink create bodostarErp.mdb D:\Users\Zulinfi@163.com_dropbox\软件\电脑ERP\BodostarERP\db\bodostarErp.mdb