@echo off 
echo;欢迎使用打印机安装程序 
echo;将安装2号楼5楼打印机，按任意键开始安装，或按右上角 X 退出安装 
pause>nul rem ">nul"使命令输出不显示 
echo;创建打印机 TCP/IP 端口： IP_10.1.121.200
cscript %~dp0\IT5PCL6Winx64_11200ZH-CN\prnport.vbs -a -r IP_10.1.121.200 -h 10.1.121.200 -o raw 
echo;删除同名打印机 
rundll32 printui.dll,PrintUIEntry /dl /n "B2-5L-KONICA MINOLTA C368SeriesPCL" /q 
echo;创建打印机： B2-5L-KONICA MINOLTA C368SeriesPCL 
rundll32 printui.dll,PrintUIEntry /if /b "B2-5L-KONICA MINOLTA C368SeriesPCL" /f %~dp0\IT5PCL6Winx64_11200ZH-CN\KOAXPJ__.INF /r "IP_10.1.121.200" /m "KONICA MINOLTA C368SeriesPCL" /z 
echo;打印机安装完成 
echo;按任意键退出... 
pause>nul