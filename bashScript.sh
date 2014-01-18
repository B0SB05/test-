#! /bin/bash 
echo -n "Host IP Address : "
read hostIP
echo " ----------- TCP SYNC Ping ----------------"
nmap -PS $hostIP  -oX $hostIP"Sync"
echo " ----------- TCP ACK Ping ----------------"
nmap -PA $hostIP  -oX $hostIP"ACK"
echo " ----------- ARP Ping ----------------"
nmap -PR $hostIP -oX $hostIP"ARP"
echo " ----------- Echo Request Ping ----------------"
nmap -PE $hostIP  -oX $hostIP"EchoRequest"
echo " ----------- UDP Ping ----------------"
nmap -PU $hostIP  -oX $hostIP"UDP"
#############################################################


##
