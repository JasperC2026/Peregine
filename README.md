<div align="center">

<img width="1280" height="640" alt="Peregine banner" src="https://github.com/user-attachments/assets/c8a622e7-2539-4837-a087-23d2d0aa7d71" />

# Peregine

**A powerful, lightweight Bash-based CLI toolbox for networking, system management, and privacy/security — all in one interactive interface.**

![Version](https://img.shields.io/badge/Version-3-00008b?style=for-the-badge)
![License](https://img.shields.io/badge/License-GPL_V3-00008b?style=for-the-badge)
![Shell](https://img.shields.io/badge/Shell-Bash-black?style=for-the-badge&logo=gnubash&logoColor=black)
![Platform](https://img.shields.io/badge/Platform-Linux-black?style=for-the-badge&logo=linux&logoColor=black)

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
| Ubuntu / Debian-based | Fully tested |
| Other Linux distros |  Should work, minor issues possible |
| macOS / Windows |  Not supported |

> This project is actively developed. Fast iteration may occasionally introduce bugs — bug reports and PRs are welcome.

---


## Dependencies
 
All dependencies are optional — only install what you need for the tools you use. Nothing is required just to run Peregine itself.
 
**Networking & OSINT**
 
| Tool | Package | Used by |
|---|---|---|
| `curl` | `sudo apt install curl` | `get_ip`, `ip_osint` |
| `whois` | `sudo apt install whois` | `whois_lookup` |
| `dig` | `sudo apt install dnsutils` | `dns_info` |
| `ping` | `sudo apt install iputils-ping` | `ping` |
| `traceroute` | `sudo apt install traceroute` | `traceroute` |
| `python3` | `sudo apt install python3` | `local_server` |
| `maigret` | `pipx install maigret` | `maigret_search` |
| `torsocks` | `sudo apt install torsocks` | Tor routing (all network tools) |
 
**Security & System**
 
| Tool | Package | Used by |
|---|---|---|
| `lynis` | `sudo apt install lynis` | `system_audit` |
| `chkrootkit` | `sudo apt install chkrootkit` | `rootkit_hunt` |
| `shred` | `sudo apt install coreutils` | `secure_shred_dir`, `secure_delete` |
| `srm` | `sudo apt install secure-delete` | `secure_empty_trash` |
| `sfill` | `sudo apt install secure-delete` | `secure_overwrite_free_space` |
 
**Privacy & Metadata**
 
| Tool | Package | Used by |
|---|---|---|
| `exiftool` | `sudo apt install libimage-exiftool-perl` | `clean_metadata` |
 
**Encryption**
 
| Tool | Package | Used by |
|---|---|---|
| `openssl` | `sudo apt install openssl` | All AES/ChaCha20 encrypt/decrypt, `generate_password`, `generate_key` |
| `gpg` | `sudo apt install gnupg` | `encrypt_file_twofish`, `encrypt_file_serpent` and their decrypt counterparts |
 
**Install everything at once (Debian/Ubuntu):**
 
```bash
sudo apt install curl whois dnsutils iputils-ping traceroute python3 torsocks \
  lynis chkrootkit coreutils secure-delete \
  libimage-exiftool-perl mat2 \
  openssl gnupg git
pipx install maigret
```
 
---

## Getting Started

Use the install.sh file or just clone the repo. 

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
| Source code | [GNU General Public License v3.0](./LICENSE) |
| Logos & assets | [CC0 Public Domain Dedication](./LICENSE) |

Copyright © 2026 [Peregine](https://codeberg.org/peregine)