## This Script Automation For Successfully Update Repository Proxmox Version 7.4 - 8.3 Non Subscription

## Issue Proxmox

Proxmox Failed or Unauthorized update via Repository
```
root@pve:~# apt update
Get:1 http://security.debian.org bookworm-security InRelease [48.0 kB]
Get:2 http://ftp.debian.org/debian bookworm InRelease [151 kB]
Get:3 http://security.debian.org bookworm-security/main amd64 Packages [290 kB]
Get:4 http://ftp.debian.org/debian bookworm-updates InRelease [55.4 kB]
Get:5 http://ftp.debian.org/debian bookworm/main amd64 Packages [8,791 kB]
Get:6 http://security.debian.org bookworm-security/main Translation-en [176 kB]                      
Get:7 http://security.debian.org bookworm-security/contrib amd64 Packages [896 B]                                           
Get:8 http://security.debian.org bookworm-security/contrib Translation-en [652 B]                                           
Err:9 https://enterprise.proxmox.com/debian/ceph-quincy bookworm InRelease                                                  
  401  Unauthorized [IP: 117.120.5.231 443]
Err:10 https://enterprise.proxmox.com/debian/pve bookworm InRelease                        
  401  Unauthorized [IP: 117.120.5.231 443]
Get:11 http://ftp.debian.org/debian bookworm/main Translation-en [6,109 kB]                                                                                                                                         
Get:12 http://ftp.debian.org/debian bookworm/contrib amd64 Packages [53.5 kB]                                                                                                                                       
Get:13 http://ftp.debian.org/debian bookworm/contrib Translation-en [48.4 kB]                                                                                                                                       
Get:14 http://ftp.debian.org/debian bookworm-updates/main amd64 Packages [6,924 B]                                                                                                                                  
Get:15 http://ftp.debian.org/debian bookworm-updates/main Translation-en [5,448 B]                                                                                                                                  
Reading package lists... Done                                                                                                                                                                                       
E: Failed to fetch https://enterprise.proxmox.com/debian/ceph-quincy/dists/bookworm/InRelease  401  Unauthorized [IP: 117.120.5.231 443]
E: The repository 'https://enterprise.proxmox.com/debian/ceph-quincy bookworm InRelease' is not signed.
N: Updating from such a repository can't be done securely, and is therefore disabled by default.
N: See apt-secure(8) manpage for repository creation and user configuration details.
E: Failed to fetch https://enterprise.proxmox.com/debian/pve/dists/bookworm/InRelease  401  Unauthorized [IP: 117.120.5.231 443]
E: The repository 'https://enterprise.proxmox.com/debian/pve bookworm InRelease' is not signed.
N: Updating from such a repository can't be done securely, and is therefore disabled by default.
N: See apt-secure(8) manpage for repository creation and user configuration details.
root@pve:~# 
```

## Features
* Simple Script for Update Repository Proxmox 7.4 - 8.3 Non-Subscription

## Tested Version
* Proxmox 7.4
* Proxmox 8.3

## Installing Program
```
root@pve:~# git clone https://github.com/anggrdwjy/proxmox-non-subscription.git
Cloning into 'proxmox-non-subscription'...
remote: Enumerating objects: 89, done.
remote: Counting objects: 100% (89/89), done.
remote: Compressing objects: 100% (83/83), done.
remote: Total 89 (delta 26), reused 0 (delta 0), pack-reused 0 (from 0)
Receiving objects: 100% (89/89), 31.27 KiB | 970.00 KiB/s, done.
Resolving deltas: 100% (26/26), done.
root@pve:~# cd proxmox-non-subscription/
root@pve:~/proxmox-non-subscription# chmod -R 777 *
root@pve:~/proxmox-non-subscription# ls -l
total 20
-rwxrwxrwx 1 root root 5151 Jan  3 17:13 proxmox-non-subscription.sh
-rwxrwxrwx 1 root root 1161 Jan  3 17:13 README.md
drwxrwxrwx 2 root root 4096 Jan  3 17:13 support-7.4
drwxrwxrwx 2 root root 4096 Jan  3 17:13 support-8.3
root@pve:~/proxmox-non-subscription# 
```

## Running Program
```
root@pve:~/proxmox-non-subscription# ./proxmox-non-subscription.sh

                                                       
           ___                                           
          / _ \_______ __ __  __ _  ___ __ __            
         / ___/ __/ _ \ \ / /    \/ _ \ \ /            
        /_/  /_/  \___/_\_\ /_/_/_/\___/_\_\             
           _  __            ____     __              _      __  _             
          / |/ /__  ___    / __/_ __/ /  ___________(_)__  / /_(_)__  ___     
         /    / _ \/ _ \  _\ \/ // / _ \(_-< __/ __/ / _ \/ __/ / _ \/ _ \    
        /_/|_/\___/_//_/ /___/\_,_/_.__/___|__/_/ /_/ .__/\__/_/\___/_//_/    
                                              /_/                           
      Version: 1.1 - 10/07/2025                                             
      Developer: https://github.com/anggrdwjy                               
      Support OS : Proxmox 7.4 - Proxmox 8.3                             
                                                                            
   _____________________________________________________                    
                                                                 
      Options List :                                             
      1) Add Repository Proxmox 8.3 Non-Subscription        
      2) Add Repository Proxmox 7.4 Non-Subscription        
      3) Reboot Server                                                
      4) Exit                                                         
   _____________________________________________________           
                                                           
   Enter a number the options listed: 1
                                                                   
   Add Repository Proxmox 8.3 Non-Subcription and Update? y/n :y                                                  
                                                  
Hit:1 http://security.debian.org bookworm-security InRelease
Hit:2 http://ftp.debian.org/debian bookworm InRelease
Hit:3 http://ftp.debian.org/debian bookworm-updates InRelease
Get:4 http://download.proxmox.com/debian/ceph-quincy bookworm InRelease [3,470 B]
Get:5 http://download.proxmox.com/debian/pve bookworm InRelease [2,768 B]
Get:6 http://download.proxmox.com/debian/ceph-quincy bookworm/no-subscription amd64 Packages [59.0 kB]
Get:7 http://download.proxmox.com/debian/pve bookworm/pve-no-subscription amd64 Packages [523 kB]
Fetched 588 kB in 2s (281 kB/s)
Reading package lists... Done
                                                  
   ======== Proxmox 8.3 Non-Subscription dan Update Done ========
                                                  
                                                  
   Back to options list? [y/n]:    
```

## Verification Proxmox
```
root@pve:~/proxmox-non-subscription# apt update
Hit:1 http://security.debian.org bookworm-security InRelease
Hit:2 http://ftp.debian.org/debian bookworm InRelease
Hit:3 http://ftp.debian.org/debian bookworm-updates InRelease
Hit:4 http://download.proxmox.com/debian/ceph-quincy bookworm InRelease
Hit:5 http://download.proxmox.com/debian/pve bookworm InRelease
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
223 packages can be upgraded. Run 'apt list --upgradable' to see them.
root@pve:~/proxmox-non-subscription# 
```

## Support

* [:octocat: Follow me on GitHub](https://github.com/anggrdwjy)
* [🔔 Subscribe me on Youtube](https://www.youtube.com/@anggarda.wijaya)

## Bugs

Please open an issue on GitHub with as much information as possible if you found a bug.
* Your Proxmox Version
* All the logs and message outputted
* etc
