@echo off 
echo;��ӭʹ�ô�ӡ����װ���� 
echo;����װ��¥1428��ӡ�������������ʼ��װ�������Ͻ� X �˳���װ 
pause>nul rem ">nul"ʹ�����������ʾ 
echo;������ӡ�� TCP/IP �˿ڣ� IP_10.14.0.15
cscript %~dp0\IT5PCL6Winx64_11200ZH-CN\prnport.vbs -a -r IP_10.14.0.15 -h 10.14.0.15 -o raw 
echo;ɾ��ͬ����ӡ�� 
rundll32 printui.dll,PrintUIEntry /dl /n "14L-KONICA MINOLTA C368SeriesPCL" /q 
echo;������ӡ���� 14L-KONICA MINOLTA C368SeriesPCL 
rundll32 printui.dll,PrintUIEntry /if /b "14L-KONICA MINOLTA C368SeriesPCL" /f %~dp0\IT5PCL6Winx64_11200ZH-CN\KOAXPJ__.INF /r "IP_10.14.0.15" /m "KONICA MINOLTA C368SeriesPCL" /z 
echo;��ӡ����װ��� 
echo;��������˳�... 
pause>nul