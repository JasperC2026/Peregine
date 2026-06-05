# Peregine

> A powerful, lightweight Bash-based CLI toolbox for networking, system management, and privacy/security — all in one interactive interface.

---

## What is Peregine?

Think of Peregine as a **toolbox** — a wrapper around the tools you already use. It is a modular Linux CLI utility designed to make your tools faster and easier to access.

Rather than memorising a dozen different command syntaxes, Peregine brings everything together in one place:

- **Networking** — ping, traceroute, DNS lookups, IP info, and more
- **Security & privacy** — system audits, rootkit scanning, secure deletion
- **Encryption** — AES, ChaCha20, Twofish, Serpent, Caesar, Vigenère, Base64, and more
- **OSINT** — IP intelligence, email lookups, phone lookups, site history, screenshots

---

## Why is it called "Peregine"?

It is named after the **Peregrine falcon** — the fastest animal on Earth, known for its speed, freedom, and clear-eyed precision. Peregine inherits that spirit: free, open source, and built for speed.

(Yes, there is one R missing. It was intentional enough to stick.)

---

## How does it work?

Peregine is installed as a symlink or script at `/usr/bin/peregine`, making it callable from anywhere in your terminal.

When you run `peregine`, the command dispatcher checks your input against the list of known commands and calls the matching function directly. Each command is self-contained and works independently from the rest of the toolbox.

```bash
# Launch the interactive menu
peregine

# Run a command directly
peregine {command}

# Get help for a specific command
peregine help {command}
```

**How the dispatcher works:**

```bash
if [[ $# -eq 0 ]]; then
    _peregine_list_commands
elif [[ "$1" == "help" ]]; then
    help "$2"
elif [[ " ${_PEREGINE_COMMANDS[*]} " == *" $1 "* ]]; then
    "$1"
else
    echo -e "${RED}[!] Unknown command: $1${RESET}"
    echo -e "    Run ${CYAN}peregine${RESET} without arguments to list all commands."
    return 1
fi
```

If called with no arguments, Peregine lists all available commands interactively. Otherwise, it matches your input to a command and runs it.

---

## Available Commands

### Networking

| Command | Alias | Description |
|---|---|---|
| `local_server` | — | Start a local HTTP server |
| `whois_lookup` | `whois` | WHOIS lookup for a domain or IP |
| `ping` | — | Ping a host |
| `traceroute` | — | Trace the route to a host |
| `dns_info` | `dns` | DNS information for a domain |
| `get_ip` | `ip` | Get your current public IP |
| `network_explorer` | — | Explore your local network |

### OSINT

| Command | Alias | Description |
|---|---|---|
| `ip_osint` | — | OSINT lookup for an IP address |
| `stalkip` | — | Detailed IP intelligence |
| `maigret_search` | `maigret` | Search for a username across platforms |
| `phone_lookup` | — | Look up a phone number |
| `web_phone_lookup` | — | Web-based phone number lookup |
| `email_lookup` | — | Look up an email address |
| `site_history` | — | Retrieve archived URLs for a site |
| `site_screenshot` | — | Take a screenshot of a website |

### Security & Privacy

| Command | Alias | Description |
|---|---|---|
| `system_audit` | `audit` | Run a full system security audit (lynis) |
| `rootkit_hunt` | `rootkit` | Scan for rootkits (chkrootkit) |
| `secure_empty_trash` | `SET` | Securely empty the trash |
| `secure_overwrite_free_space` | `sofs` | Overwrite free disk space |
| `secure_shred_dir` | `ssd` | Securely shred a directory |
| `secure_delete` | `sedl` | Securely delete a file |
| `clean_metadata` | `metadata` | Strip metadata from files |
| `ghosttrash` | — | Silently remove files without a trace |
| `remove_temp_files` | `rm_tmp` | Remove temporary files |

### Encryption — Text

| Command | Description |
|---|---|
| `encrypt_text_aes256` / `decrypt_text_aes256` | AES-256 text encryption |
| `encrypt_text_aes128` / `decrypt_text_aes128` | AES-128 text encryption |
| `encrypt_text_chacha20` / `decrypt_text_chacha20` | ChaCha20 text encryption |
| `encrypt_text_ceasar` / `decrypt_text_ceasar` | Caesar cipher |
| `encrypt_text_vigenere` / `decrypt_text_vigenere` | Vigenère cipher |
| `encrypt_text_base64` / `decrypt_text_base64` | Base64 encoding/decoding |
| `rot13_cipher` / `rot13` | ROT13 cipher |

### Encryption — Files

| Command | Description |
|---|---|
| `encrypt_file_aes256` / `decrypt_file_aes256` | AES-256 file encryption |
| `encrypt_file_aes128` / `decrypt_file_aes128` | AES-128 file encryption |
| `encrypt_file_chacha20` / `decrypt_file_chacha20` | ChaCha20 file encryption |
| `encrypt_file_twofish` / `decrypt_file_twofish` | Twofish file encryption (GPG) |
| `encrypt_file_serpent` / `decrypt_file_serpent` | Serpent file encryption (GPG) |

### Utilities

| Command | Alias | Description |
|---|---|---|
| `generate_password` | `genpass` | Generate a secure random password |
| `generate_key` | `genkey` | Generate a cryptographic key |
| `update_apps` | `update` | Update installed apps |
| `check_dependencies` | `cd` | Check which dependencies are installed |
| `install_dependencies` | — | Install all optional dependencies |
| `license` | `l` | Show the license |
| `clone_source` | `c` | Clone the Peregine source |
| `version` | `v`, `V` | Show the current version |
| `help` | — | Show help for a command |

---

## Getting Started

**Clone and install:**

```bash
git clone https://codeberg.org/JasperC/Peregine.git
cd ~/Peregine
sudo chmod +x peregine
sudo cp ~/Peregine/peregine /usr/local/bin/peregine
```

**Or use the install file:**

```bash
curl -L https://codeberg.org/JasperC/Peregine/raw/branch/main/install.sh -o install.sh
bash install.sh
```

---

## License

| Component | License |
|---|---|
| Source code | GPL v3.0 |
| Logos & assets | CC0 1.0 |

Copyright © 2026 [Peregine](https://codeberg.org/JasperC/Peregine)