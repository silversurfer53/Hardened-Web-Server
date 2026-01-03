# 🛡️ Hardened Web Server Automation
> A Cybersecurity & Infrastructure-as-Code (IaC) Self-Development Project

## 📌 Project Overview
This project demonstrates the automated deployment and security hardening of a Linux web server. As part of my journey into cybersecurity, I built this environment to move away from manual configuration and toward **Security-as-Code**.



## 🛠️ Tech Stack & Tools
* **OS:** Ubuntu 22.04 (via WSL2)
* **Automation:** Ansible (Infrastructure as Code)
* **Security:** UFW (Uncomplicated Firewall), SSH Hardening, Patch Management
* **Version Control:** Git & GitHub

## 🚀 Key Security Features Implemented
- [x] **System Updates:** Automated patch management via `apt`.
- [x] **SSH Hardening:** Disabling root login and password authentication.
- [x] **Firewall Setup:** Strict UFW rules to minimize attack surface.
- [x] **User Management:** Enforcing the Principle of Least Privilege (PoLP).

## 📖 Learning Journey
This project serves as a foundational step in my cybersecurity self-development. Key takeaways included:
1. **WSL Integration:** Bridging the gap between Windows development and Linux production environments.
2. **Idempotency:** Learning how Ansible ensures a server stays in a "known good" state.
3. **Documentation:** Maintaining a detailed record of every installation and configuration for future audits.

## 🛠️ How to Use
1. **Initialize WSL:** Open your Ubuntu terminal.
2. **Navigate:** `cd /path/to/project`
3. **Provision:** ```bash
   ansible-playbook -i hosts.ini playbook.yml
