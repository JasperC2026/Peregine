# Jas-toolbox 1.2.1

Jas-toolbox is a lightweight, terminal-based Linux CLI toolkit designed for system management, network utilities, and privacy/security tasks. It provides an easy-to-use menu interface with submenus for different categories of tools.

## Update log 1.2

Added lynis security audit

Added bleachbit for system cleanup

Added paranoia mode     

Added color schemes and warnings        

Added processing and finishing indicators

## Update log 1.2.1

Functionallity and performance improvements

Improved interaction with tool

## Features

### Network Tools
Whois lookup – get domain registration info

Ping – test connectivity to hosts

Traceroute – trace network paths

DNS Lookup – fetch DNS records for a domain

Public IP Info – view your current external IP

### System Tools
Update All Apps – update installed packages and system apps

System Info – view CPU, memory, disk, and overall system information

### Privacy / Security Tools
Secure Empty Trash – safely delete files from trash

Overwrite Free Space – prevent recovery of deleted files

Rootkit Check – scan for potential rootkits

Remove File – securely delete any file

Generate Secure Password – create strong, random passwords

Remove Temporary Files – clean up system temp directories

## Requirements
The following packages must be installed for Jas-toolbox 1.0 to function properly:

whois – for domain lookups

ping – for connectivity tests

curl – for fetching public IP or network queries

dig – for DNS lookups

fastfetch – for fast system info display

srm – for secure file deletion

chkrootkit – for rootkit scanning

openssl – for generating secure passwords

jq - for IP osint

lynis - system audit

bleachbit - system cleaning

## Notes
Toolkit is tested on Ubuntu, on other distro's it should function probably but there could be some isseus.

If you dont want some parts of the toolkit feel free to edit the code and change the install script.

Some parts require use of sudo so be aware of the risks. Also some network tools can leak your IP so use tor or a VPN to be safe.

P.S. the updating apps part of the toolkit works with APT, flatpak and snap. Other packages will NOT be updated.

## Bugs
If you encounter any bugs feel free to open a pull requist or send a message. 

## MIT license - Copyright (c) 2026 DarkShadowUser
