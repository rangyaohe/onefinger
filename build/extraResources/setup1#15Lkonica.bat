@echo off 
echo;欢迎使用打印机安装程序 
echo;将安装主楼1528打印机，按任意键开始安装，或按右上角 X 退出安装 
pause>nul rem ">nul"使命令输出不显示 
echo;创建打印机 TCP/IP 端口： IP_10.14.0.24
cscript %~dp0\IT5PCL6Winx64_11200ZH-CN\prnport.vbs -a -r IP_10.14.0.24 -h 10.14.0.24 -o raw 
echo;删除同名打印机 
rundll32 printui.dll,PrintUIEntry /dl /n "15L-KONICA MINOLTA C368SeriesPCL" /q 
echo;创建打印机： 15L-KONICA MINOLTA C368SeriesPCL 
rundll32 printui.dll,PrintUIEntry /if /b "15L-KONICA MINOLTA C368SeriesPCL" /f %~dp0\IT5PCL6Winx64_11200ZH-CN\KOAXPJ__.INF /r "IP_10.14.0.24" /m "KONICA MINOLTA C368SeriesPCL" /z 
echo;打印机安装完成 
echo;按任意键退出... 
pause>nul