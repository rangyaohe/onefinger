@echo off 
echo;��ӭʹ�ô�ӡ����װ���� 
echo;����װ6#4F��ӡ�������������ʼ��װ�������Ͻ� X �˳���װ 
pause>nul rem ">nul"ʹ�����������ʾ 
echo;������ӡ�� TCP/IP �˿ڣ� IP_10.14.0.60
cscript %~dp0\IT5PCL6Winx64_11200ZH-CN\prnport.vbs -a -r IP_10.14.0.60 -h 10.14.0.60 -o raw 
echo;ɾ��ͬ����ӡ�� 
rundll32 printui.dll,PrintUIEntry /dl /n "6#4L-KONICA MINOLTA C368SeriesPCL" /q 
echo;������ӡ���� 6#4L-KONICA MINOLTA C368SeriesPCL 
rundll32 printui.dll,PrintUIEntry /if /b "6#4L-KONICA MINOLTA C368SeriesPCL" /f %~dp0\IT5PCL6Winx64_11200ZH-CN\KOAXPJ__.INF /r "IP_10.14.0.60" /m "KONICA MINOLTA C368SeriesPCL" /z 
echo;��ӡ����װ��� 
echo;��������˳�... 
pause>nul