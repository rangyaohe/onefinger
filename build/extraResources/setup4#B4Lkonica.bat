@echo off 
echo;��ӭʹ�ô�ӡ����װ���� 
echo;����װ4#B4F��ӡ�������������ʼ��װ�������Ͻ� X �˳���װ 
pause>nul rem ">nul"ʹ�����������ʾ 
echo;������ӡ�� TCP/IP �˿ڣ� IP_10.14.0.170
cscript %~dp0\IT5PCL6Winx64_11200ZH-CN\prnport.vbs -a -r IP_10.14.0.170 -h 10.14.0.170 -o raw 
echo;ɾ��ͬ����ӡ�� 
rundll32 printui.dll,PrintUIEntry /dl /n "4#B4L-KONICA MINOLTA C368SeriesPCL" /q 
echo;������ӡ���� 4#B4L-KONICA MINOLTA C368SeriesPCL 
rundll32 printui.dll,PrintUIEntry /if /b "4#B4L-KONICA MINOLTA C368SeriesPCL" /f %~dp0\IT5PCL6Winx64_11200ZH-CN\KOAXPJ__.INF /r "IP_10.14.0.170" /m "KONICA MINOLTA C368SeriesPCL" /z 
echo;��ӡ����װ��� 
echo;��������˳�... 
pause>nul
