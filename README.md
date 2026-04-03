# Jas-toolbox 

> A powerful, lightweight Bash-based CLI toolbox for networking, system management, and privacy/security — all in one interactive interface.

```
___             __       ___           _______.        
\  \           |  |     /   \         /       |        
 \  \          |  |    /  ^  \       |   (----`        
  >  >   .--.  |  |   /  /_\  \       \   \            
 /  /    |  `--'  |  /  _____  \  .----)   |           
/__/      \______/  /__/     \__\ |_______/     ______ 
                                               |______|
```
![Version](https://img.shields.io/badge/Version-1.6.4-ff0033?style=for-the-badge)
![License](https://img.shields.io/badge/License-MIT-ff0033?style=for-the-badge)
![Shell](https://img.shields.io/badge/Shell-Bash-black?style=for-the-badge&logo=gnubash&logoColor=black)
![Platform](https://img.shields.io/badge/Platform-Linux-black?style=for-the-badge&logo=linux&logoColor=black)


---
## What is Jas-toolbox?

Jas-toolbox is a modular, terminal-based CLI toolkit for Linux users who want fast access to a wide range of tools — without juggling a dozen different utilities. It combines networking, system management, privacy, security, and encryption into a single interactive menu-driven interface. Every tool can also be called directly as a command.

Built for speed, simplicity, privacy-first and control.

## Features

### 🖧 Network Tools
- **WHOIS lookup** — query domain registration data
- **Ping** — test host connectivity
- **Traceroute** — trace the network path to a target
- **DNS info** — retrieve DNS records via `dig`
- **Public IP** — fetch your current public IP
- **IP OSINT** — geo/ISP lookup via ipinfo.io
- **SSL certificate inspection** — view TLS cert details for any domain
- **Tor connection** — route traffic through the Tor network
- **Maigret username search** — OSINT across social platforms

### ⚙ System Tools
- **Update all apps** — APT, Flatpak, and Snap in one command
- **System information** — powered by `fastfetch`
- **Paranoia mode** — extreme lockdown (blocks network, clears history, unloads camera/audio modules)
- **Install useful tools** — curated list of office, media, privacy, and dev apps
- **Setup ClamAV** — antivirus install + config
- **Setup USBGuard** — block unauthorized USB devices
- **Setup UFW** — configure firewall with sane defaults

### 🛡 Privacy & Security Tools
- **Secure trash wipe** — `srm`-based secure deletion
- **Overwrite free disk space** — prevent data recovery
- **System audit** — full Lynis security audit
- **System cleanup** — BleachBit junk removal
- **Rootkit scan** — `chkrootkit` scan
- **Remove temp files** — clear `/tmp`
- **Secure password generator** — via OpenSSL
- **Secure file deletion** — `shred` with 5 passes
- **Metadata cleaner** — strip EXIF data from images with `exiftool`

### ꗃ Encryption Tools
- **AES-256 / AES-128** — encrypt and decrypt files and text
- **Vigenère cipher** — classic polyalphabetic encryption
- **Caesar cipher** — shift cipher with custom offset
- **Base64** — encode and decode text
- **ROT13** — letter substitution cipher

### 🖌 Miscellaneous
- **Matrix effect** — `cmatrix` green rain
- **Hollywood effect** — fake hacking terminal (`hollywood`)
- **Hacker code simulation** — purely fictional, entertainment only

---

## Requirements

The following packages are required for full functionality. Missing tools will be flagged at runtime — the toolbox won't crash if something isn't installed. Installing the dependencies can be done manual or with install.sh.

| Package | Purpose |
|---|---|
| `whois` | Domain lookups |
| `ping` | Connectivity tests |
| `curl` | Fetch public IP, API requests |
| `dig` (dnsutils) | DNS lookups |
| `fastfetch` | System info display |
| `srm` (secure-delete) | Secure file deletion |
| `exiftool` (libimage-exiftool-perl) | Metadata removal |
| `chkrootkit` | Rootkit scanning |
| `openssl` | Encryption & password generation |
| `jq` | JSON parsing for IP OSINT |
| `pv` | Typing effects |
| `lynis` | System auditing |
| `bleachbit` | System cleaning |
| `cmatrix` | Matrix terminal effect |
| `hollywood` | Fake hacking terminal effect |
| `tor` + `torsocks` | Tor routing |
| `traceroute` | Network path tracing |
| `git` | Source code cloning |
| `maigret` *(optional)* | Username OSINT (install via `pipx install maigret`) |

---

## Installation

```bash
git clone https://github.com/DarkShadowUser/Jas-toolbox.git
cd Jas-toolbox
chmod +x jas
sudo cp jas /usr/local/bin/jas
```

Or use the included installer:
```bash
chmod +x install.sh
sudo ./install.sh
```

---
## Usage

### Interactive mode
```bash
jas
```
Opens the main menu with categorized submenus.

### Direct commands
```bash
jas <command>
```
### Network
```
jas whois              # WHOIS lookup
jas ping               # Ping a host
jas trace              # Traceroute
jas dns                # DNS info
jas ip                 # Get public IP
jas osint              # IP OSINT lookup
jas inspect_cert       # Inspect SSL certificate
jas tor_connect        # Connect through Tor
jas maigret_search     # Username OSINT
```

#### System
```
jas update_apps        # Update APT/Flatpak/Snap
jas sys-info           # System information
jas paranoia_mode      # Extreme lockdown mode
jas useful_tools       # Install curated tools
jas setup_clamav       # Install & configure ClamAV
jas setup_usbguard     # Install & configure USBGuard
jas setup_ufw          # Install & configure UFW
```

#### Privacy & Security
```
jas SET                # Secure empty trash
jas SOFC               # Overwrite free disk space
jas audit              # System audit (Lynis)
jas bleachbit          # System cleanup
jas rootkit            # Rootkit scan
jas rm-temp            # Remove temp files
jas psswd              # Generate secure password
jas del                # Securely delete a file
jas clean_metadata     # Remove file metadata
```

#### Encryption
```
jas encrypt_file_aes256    jas decrypt_file_aes256
jas encrypt_file_aes128    jas decrypt_file_aes128
jas encrypt_text_aes256    jas decrypt_text_aes256
jas encrypt_text_aes128    jas decrypt_text_aes128
jas encrypt_text_vigenere  jas decrypt_text_vigenere
jas encrypt_text_ceasar    jas decrypt_text_ceasar
jas encrypt_text_base64    jas decrypt_text_base64
jas rot13_cipher
```

#### Other
```
jas help               # Show help
jas version            # Show version
jas license            # Show license
jas clone              # Clone source repository
jas matrix             # Matrix effect
jas hacked             # Hollywood effect
jas hacking            # Fake hacking simulation
```

---
> ⚠ **Read before using**

- **Paranoia mode** disables networking, unloads audio/camera kernel modules, and clears shell history. Use in a VM or controlled environment only.
- **Secure overwrite free space** is time-consuming and disk-intensive.
- **Secure empty trash** permanently deletes files — this is irreversible.
- **Delete file** uses `shred` with 5 passes — data cannot be recovered.
- Some network tools may expose your real IP. Use Tor or a VPN if privacy is required.
- Some commands require `sudo`. Always understand what a command does before running it.

---
## Notes

- Tested on **Ubuntu**. Should work on most Debian-based distros; minor issues may occur elsewhere.
- App updates only cover **APT**, **Flatpak**, and **Snap**. Other package managers are not supported.
- This project is actively developed. Fast iteration may occasionally introduce bugs — reports and PRs welcome.

---
## License

MIT License — Copyright (c) 2026 [DarkShadowUser](https://github.com/DarkShadowUser/)

See [LICENSE](./LICENSE) for the full text.
