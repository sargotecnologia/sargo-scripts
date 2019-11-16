@echo off

chkdsk /scan 

defrag c: -f -v

powercfg /hibernate off

ipconfig /fhushdns

pause