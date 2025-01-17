#!/bin/bash

# Variables for domain join
DOMAIN_NAME=""
DOMAIN_USER=""
DOMAIN_PASSWORD=""


# Install required packages
sudo apt update
sudo apt install -y realmd sssd krb5-user adcli samba

# Configure Kerberos
# echo "[libdefaults]" | sudo tee /etc/krb5.conf
# echo "    default_realm = $DOMAIN_NAME" | sudo tee -a /etc/krb5.conf
# echo "    dns_lookup_realm = false" | sudo tee -a /etc/krb5.conf
# echo "    dns_lookup_kdc = true" | sudo tee -a /etc/krb5.conf

# Join the domain
echo $DOMAIN_PASSWORD | sudo realm join --user=$DOMAIN_USER --password-fd=0 $DOMAIN_NAME

# Start and enable necessary services
sudo systemctl enable sssd
sudo systemctl start sssd
