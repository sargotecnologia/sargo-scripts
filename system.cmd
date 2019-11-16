Rem Versão 19.11.01 

@echo off

net stop wuauserv
net stop Themes

chkdsk /scannow

sfc /scannow

defrag c: -f -v

powercfg /hibernate off

ipconfig /fhushdns

netsh int tcp set global congestionprovider=ctcp 
netsh int tcp set global dca=enabled
netsh int tcp set global ecncapability=enabled
netsh int tcp set global chimney=enabled



pause
