@echo off
echo 正在清除系统垃圾文件，请稍等......
del /f /s /q %windir%\*.bak
del /f /s /q %systemdrive%\*.tmp
del /f /s /q %systemdrive%\*._mp
del /f /s /q %systemdrive%\*.log
del /f /s /q %systemdrive%\*.gid
del /f /s /q %systemdrive%\*.chk
del /f /s /q %systemdrive%\*.old
del /f /s /q %systemdrive%\recycled*.*
del /f /s /q %windir%\prefetch*.*
rd /s /q %windir%\temp & md %windir%\temp
del /f /q %userprofile%\cookies\*.*
del /f /q %userprofile%\AppData\Roaming\Microsoft\Windows\Recent*.*
del /f /s /q "%userprofile%\AppData\Local\Microsoft\Windows\Temporary Internet Files\*.*"
del /f /s /q "%userprofile%\AppData\Local\Temp\*.*"
del /f /s /q "%userprofile%\AppData\Roaming\Microsoft\Windows\Recent\*.*"
echo 清除系统垃圾文件完成，请关闭本窗口！
echo pause