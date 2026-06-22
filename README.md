<div align="center">

![Peregine banner](https://codeberg.org/JasperC/Peregine/raw/branch/main/assets/peregine_header.png)

# Peregine

**A powerful, lightweight Bash-based CLI toolbox for networking, system management, and privacy/security — all in one interactive interface.**

![Version](https://img.shields.io/badge/v4.0-000000?style=for-the-badge) [![GPL v3](https://img.shields.io/badge/GPL_v3.0-000000?style=for-the-badge&logo=gnu&logoColor=white)](./LICENSE) ![BASH](https://img.shields.io/badge/Bash-000000?style=for-the-badge&logo=gnubash&logoColor=white) ![Platform](https://img.shields.io/badge/Linux-000000?style=for-the-badge&logo=linux&logoColor=white) ![Kind](https://img.shields.io/badge/FOSS-000000?style=for-the-badge) ![Codeberg](https://img.shields.io/badge/Codeberg-2185D0?style=for-the-badge&logo=codeberg&logoColor=white)

</div>

---  

## What is Peregine?  
   
Peregine is a modular, terminal-based CLI toolkit for Linux users who want fast access to a wide range of tools — without juggling a dozen different utilities.  
   
It combines **networking**, **system management**, **privacy**, **security**, and **encryption** into a single interactive menu-driven interface. Every tool is also directly callable as a standalone command.  
   
Built for speed, simplicity, and control — privacy-first by design.  
   
---  
   
## Features  
   
- **Interactive menu** — navigate all tools without memorising commands  
- **Direct invocation** — call any tool straight from the command line  
- **Modular design** — clean separation between tool categories  
- **No bloat** — pure Bash, minimal dependencies  
- **Privacy-first** — built with security-conscious users in mind  
   
---  
   
## Compatibility  
   
| Distro family | Status |  
|---|---|  
| ![Ubuntu](https://img.shields.io/badge/Ubuntu-E95420?style=for-the-badge&logo=ubuntu&logoColor=white) ![Debian](https://img.shields.io/badge/Debian-A81D33?style=for-the-badge&logo=debian&logoColor=white) | ✔ Fully tested |  
| ![Linux](https://img.shields.io/badge/Other_Linux-FCC624?style=for-the-badge&logo=linux&logoColor=black) | ✔ Working properly, minor issues possible |  
| ![macOS](https://img.shields.io/badge/macOS-000000?style=for-the-badge&logo=apple&logoColor=white) ![Windows](https://img.shields.io/badge/Windows-0078D4?style=for-the-badge&logo=windows11&logoColor=white) | ✗ Not supported |  
   
> This project is actively developed. Fast iteration may occasionally introduce bugs — bug reports and PRs are welcome.  
   
---  
   
## Dependencies  
   
All dependencies are optional — only install what you need for the tools you use. Nothing is required just to run Peregine itself.  
   
**Networking & OSINT**  
   
![curl](https://img.shields.io/badge/curl-073551?style=for-the-badge&logo=curl&logoColor=white)
![whois](https://img.shields.io/badge/whois-00008b?style=for-the-badge)
![dig](https://img.shields.io/badge/dig_(dnsutils)-00008b?style=for-the-badge)
![ping](https://img.shields.io/badge/ping-00008b?style=for-the-badge)
![traceroute](https://img.shields.io/badge/traceroute-00008b?style=for-the-badge)
![python3](https://img.shields.io/badge/python3-3776AB?style=for-the-badge&logo=python&logoColor=white)
![maigret](https://img.shields.io/badge/maigret-181717?style=for-the-badge)
![phoneinfoga](https://img.shields.io/badge/phoneinfoga-181717?style=for-the-badge)
![theHarvester](https://img.shields.io/badge/theHarvester-181717?style=for-the-badge)
![waybackurls](https://img.shields.io/badge/waybackurls-181717?style=for-the-badge)
![gowithness](https://img.shields.io/badge/gowithness-181717?style=for-the-badge)
![torsocks](https://img.shields.io/badge/torsocks-7D4698?style=for-the-badge&logo=torproject&logoColor=white)
| Tool | Package | Used by |  
|---|---|---|  
| `curl` | `sudo apt install curl` | `get_ip`, `ip_osint`, `show_weather` |  
| `whois` | `sudo apt install whois` | `whois_lookup` |  
| `dig` | `sudo apt install dnsutils` | `dns_info` |  
| `ping` | `sudo apt install iputils-ping` | `ping` |  
| `traceroute` | `sudo apt install traceroute` | `traceroute` |  
| `python3` | `sudo apt install python3` | `local_server` |  
| `maigret` | `pipx install maigret` | `maigret_search` |  
| `waybackurls` | `go install github.com/tomnomnom/waybackurls@latest` | `site_history` |
| `iphoneinfoga` | `bash <( curl -sSL https://raw.githubusercontent.com/sundowndev/phoneinfoga/master/support/scripts/install )` | `phone_lookup` |
| `theHarvester` | `sudo apt install theharvester` | `email_lookup` and `site_screenshot` |
| `torsocks` | `sudo apt install torsocks` | Tor routing (all network tools) |  
   
**Security & System**  
   
![lynis](https://img.shields.io/badge/lynis-00008b?style=for-the-badge)
![chkrootkit](https://img.shields.io/badge/chkrootkit-00008b?style=for-the-badge)
![shred](https://img.shields.io/badge/shred_(coreutils)-A42E2B?style=for-the-badge&logo=gnu&logoColor=white) 
![shred](https://img.shields.io/badge/shred-00008b?style=for-the-badge)
![sfill](https://img.shields.io/badge/sfill-00008b?style=for-the-badge)
![top](https://img.shields.io/badge/top-00008b?style=for-the-badge)
   
| Tool | Package | Used by |  
|---|---|---|  
| `lynis` | `sudo apt install lynis` | `system_audit` |  
| `chkrootkit` | `sudo apt install chkrootkit` | `rootkit_hunt` |  
| `shred` | `sudo apt install coreutils` | `secure_shred_dir`, `secure_delete` `secure_empty_trash` |  
| `sfill` | `sudo apt install secure-delete` | `secure_overwrite_free_space` |  
| `top` | `sudo apt install procps` | `process_monitor` |
   
**Privacy & Metadata**  
   
![exiftool](https://img.shields.io/badge/exiftool-00008b?style=for-the-badge)  
   
| Tool | Package | Used by |  
|---|---|---|  
| `exiftool` | `sudo apt install libimage-exiftool-perl` | `clean_metadata` |  
   
**Encryption**  
   
![openssl](https://img.shields.io/badge/openssl-721412?style=for-the-badge&logo=openssl&logoColor=white)
![gpg](https://img.shields.io/badge/gpg-0093DD?style=for-the-badge&logo=gnuprivacyguard&logoColor=white) 
   
| Tool | Package | Used by |  
|---|---|---|  
| `openssl` | `sudo apt install openssl` | All AES/ChaCha20 encrypt/decrypt, `generate_password`, `generate_key` |  
| `gpg` | `sudo apt install gnupg` | `encrypt_file_twofish`, `encrypt_file_serpent` and their decrypt counterparts |  
   
**MISC**

Required dependencie for using loading animations: https://github.com/Silejonu/bash_loading_animations

peregine_loading.sh should be in usr/local/bin
   
## Getting Started  
   
Use the peregine-installer. Copy the file, make it executable and run it.
   
---  
   
## Contributing  
   
Contributions are welcome and appreciated. Here's how to get involved:  
   
1. **Fork** the repository on [Codeberg](https://codeberg.org/peregine/Peregine)  
2. **Create a branch** for your feature or fix: `git checkout -b feature/your-feature-name`  
3. **Make your changes** — keep commits focused and descriptive  
4. **Test** your changes on a Debian-based system before submitting  
5. **Open a Pull Request** with a clear description of what you changed and why  
   
### Guidelines  
   
- Follow the existing code style — consistent indentation, clear variable names  
- Keep functions modular and single-purpose  
- Add comments for anything non-obvious  
- Don't introduce unnecessary external dependencies  
- If you're fixing a bug, describe how to reproduce it in the PR  
   
### Reporting Issues  
   
Found a bug or have a feature request? [Open an issue](https://codeberg.org/peregine/Peregine/issues) and include:  
- Your distro and version  
- Steps to reproduce (if a bug)  
- Expected vs actual behaviour  
   
---  
   
## License  
   
| Component | License |  
|---|---|  
| Source code | [![GPL v3](https://img.shields.io/badge/GPL_v3.0-A42E2B?style=for-the-badge&logo=gnu&logoColor=white)](./LICENSE) |  
| Logos & assets | [![CC0](https://img.shields.io/badge/CC0_1.0-EF9421?style=for-the-badge&logo=creativecommons&logoColor=white)](./LICENSE) |    
   
Copyright (C) 2026 JasperC(https://codeberg.org/JasperC/Peregine)  
