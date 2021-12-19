@echo off 
%1 %2
ver|find "5.">nul&&goto :runas 
mshta vbscript:createobject("shell.application").shellexecute("%~s0","goto :runas","","runas",1)(window.close)&goto :eof

:runas

@echo on
slmgr /skms 10.5.2.90
slmgr /ipk W269N-WFGWX-YVC9B-4J6C9-T83GX
slmgr /ato
pause