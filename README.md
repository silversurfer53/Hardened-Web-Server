\# Hardened Web Server Configuration (DevSecOps)



This repository contains Infrastructure as Code (IaC) to deploy and automatically secure a Linux web server.



\## Features

\* \*\*Terraform:\*\* Provisioning of security groups that block all unnecessary ports.

\* \*\*Ansible:\*\* Automated hardening playbook that:

&nbsp;   \* Disables SSH password authentication (requires SSH keys).

&nbsp;   \* Disables root login.

&nbsp;   \* Configures a host-based firewall (UFW).

\* \*\*Bash Scripting:\*\* Automated security patching script to keep software up to date.



\## How to use

1\. Run `terraform apply` to build the infrastructure.

2\. Run `ansible-playbook -i inventory ansible/playbook.yml` to harden the server.

3\. Schedule `scripts/update\_patch.sh` as a cron job for daily updates.

