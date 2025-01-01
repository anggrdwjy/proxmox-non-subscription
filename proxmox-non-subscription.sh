#!/bin/bash
#===============================================================#
# Script Name   : proxmox-non-subcription                       #
# Description   : Script Non Subscription Proxmox               #
# Author        : Anggarda Saputra Wijaya                       #
# Github        : https://github.com/anggrdwjy.                 #
#===============================================================#
again='y'
while [[ $again == 'Y' ]] || [[ $again == 'y' ]] ; do
clear
echo "                                                                     			";
echo "												";
echo "  ██████╗ ██████╗  ██████╗ ██╗  ██╗███╗   ███╗ ██████╗ ██╗  ██╗			";
echo "  ██╔══██╗██╔══██╗██╔═══██╗╚██╗██╔╝████╗ ████║██╔═══██╗╚██╗██╔╝		";
echo "  ██████╔╝██████╔╝██║   ██║ ╚███╔╝ ██╔████╔██║██║   ██║ ╚███╔╝ 		";
echo "  ██╔═══╝ ██╔══██╗██║   ██║ ██╔██╗ ██║╚██╔╝██║██║   ██║ ██╔██╗			"; 
echo "  ██║     ██║  ██║╚██████╔╝██╔╝ ██╗██║ ╚═╝ ██║╚██████╔╝██╔╝ ██╗			";
echo "  ╚═╝     ╚═╝  ╚═╝ ╚═════╝ ╚═╝  ╚═╝╚═╝     ╚═╝ ╚═════╝ ╚═╝  ╚═╝			";
echo "                                                                     			";                                                         
echo "     _  __            ____     __              _      __  _        	";
echo "    / |/ /__  ___    / __/_ __/ /  ___________(_)__  / /_(_)__  ___ 	";
echo "   /    / _ \/ _ \  _\ \/ // / _ \(_-< __/ __/ / _ \/ __/ / _ \/ _ \	";
echo "  /_/|_/\___/_//_/ /___/\_,_/_.__/___|__/_/ /_/ .__/\__/_/\___/_//_/	";
echo "                                           /_/                    	";
echo "								";
echo "   Version: 1.0 - 01/01/2025                            	";
echo "   Developer: https://github.com/anggrdwjy              	";
echo "   Support OS : Proxmox 7.4 - Proxmox 8.3                	";
echo "                                                        	";
echo "   __________________________________________________   	";                                                            
echo "                                                  	";
echo "   Options List :                                 	";
echo "   1) Add Repository Proxmox 8.3 Non-Subscription        	";
echo "   2) Add Repository Proxmox 7.4 Non-Subscription        	";
echo "   3) Reboot Server                              		";
echo "   4) Exit                                       		";
echo "   __________________________________________________   	";
echo "                                                        	";
read -p "   Enter a number the options listed: " choice;
echo "                                                        	";
case $choice in                       

1) read -p "   Add Repository Proxmox 8.3 Non-Subcription and Update? y/n :" -n 1 -r
   echo "                                                  ";
   echo "                                                  ";
   if [[ ! $REPLY =~ ^[Nn]$ ]] 
   then
   sudo cp /etc/apt/sources.list.d/pve-enterprise.list /etc/apt/sources.list.d/pve-enterprise.list.bak
   sudo cp /etc/apt/sources.list.d/ceph.list /etc/apt/sources.list.d/ceph.list.bak
   sudo cp support-8.3/pve-enterprise.list /etc/apt/sources.list.d/pve-enterprise.list
   sudo cp support-8.3/ceph.list /etc/apt/sources.list.d/ceph.list
   sudo apt-get update
   echo "                                                  ";
   echo "   ======== Proxmox 8.3 Non-Subscription dan Update Done ========";
   echo "                                                  ";
   fi
   ;;

2) read -p "   Add Repository Proxmox 7.4 Non-Subcription and Update? y/n :" -n 1 -r
   echo "                                                  ";
   echo "                                                  ";
   if [[ ! $REPLY =~ ^[Nn]$ ]] 
   then
   sudo cp /etc/apt/sources.list /etc/apt/sources.list.bak
   sudo cp /etc/apt/sources.list.d/ceph.list /etc/apt/sources.list.d/ceph.list.bak
   sudo cp support-7.4/sources.list /etc/apt/sources.list
   sudo cp support-7.4/ceph.list /etc/apt/sources.list.d/ceph.list
   sudo apt-get update
   echo "                                                  ";
   echo "   ======== Proxmox 8.3 Non-Subscription dan Update Done ========";
   echo "                                                  ";
   fi
   ;;

3) read -p "   Reboot Your Proxmox? y/n :" -n 1 -r
   echo "                                                  ";
   echo "                                                  ";
   if [[ ! $REPLY =~ ^[Nn]$ ]] 
   then
   reboot
   fi
   ;;
   
4) exit
   ;;
*)    echo "   Sorry, options list not available"
esac
echo "                                                  ";
echo -n "   Back to options list? [y/n]: ";
read again;
while [[ $again != 'Y' ]] && [[ $again != 'y' ]] && [[ $again != 'N' ]] && [[ $again != 'n' ]] ; do
echo "                                                  ";
echo "   Sorry, options list not available";
echo "                                                  ";
echo -n "   Back to options list? [y/n]: ";
read again;
done
done 
