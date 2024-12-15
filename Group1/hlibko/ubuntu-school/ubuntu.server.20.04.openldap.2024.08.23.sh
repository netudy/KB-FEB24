##########################################################
# OpenLDAP on Ubuntu Server 20.04 LTS
# https://releases.ubuntu.com/20.04/ubuntu-20.04.6-live-server-amd64.iso
##########################################################

# Install net-tools
sudo apt install net-tools -y

# Create ssh config (only for linux/windows environments, OSX won't need)
cat <<"EOF" >> ~/.ssh/config
# Ubuntu Server
Host 10.49.76.69
  HostName 10.49.76.69
  IdentityFile ~/.ssh/DESKTOP-R272VD1
EOF

# Update and upgrade system packages
sudo apt update && sudo apt upgrade -y

# Install Docker
sudo apt install -y docker.io

# Enable Docker to start on boot
sudo systemctl enable docker
sudo systemctl start docker

# Install Docker Compose
sudo apt install -y docker-compose

# Disable UFW (Uncomplicated Firewall) on Ubuntu to avoid conflicts with other firewalls
sudo ufw disable

# Create a directory for the OpenLDAP setup
mkdir ~/openldap-netudy
cd ~/openldap-netudy

# Create a Docker Compose YAML file
cat <<"EOF" > docker-compose.yaml
version: '3'

services:
  ldap:
    image: osixia/openldap:1.5.0  # Use the osixia OpenLDAP Docker image
    container_name: ldap-server  # Name the container "ldap-server"
    environment:
      LDAP_ORGANISATION: "Example Corp"
      LDAP_DOMAIN: "example.org"
      LDAP_ADMIN_PASSWORD: "adminpassword"
    ports:
      - "389:389"  # LDAP port
      - "636:636"  # LDAPS port
    volumes:
      - ldap_data:/var/lib/ldap  # Persist LDAP data
      - ldap_config:/etc/ldap/slapd.d  # Persist LDAP configuration
    restart: always

  phpldapadmin:
    image: osixia/phpldapadmin:0.9.0  # Use the osixia phpLDAPadmin Docker image
    container_name: ldap-admin  # Name the container "ldap-admin"
    environment:
      PHPLDAPADMIN_LDAP_HOSTS: ldap  # Correct service name
      PHPLDAPADMIN_HTTPS: "false"  # Disable HTTPS and use plain HTTP
    ports:
      - "8080:80"  # Access phpLDAPadmin over HTTP on port 8080
    depends_on:
      - ldap  # Ensure OpenLDAP starts before phpLDAPadmin
    restart: always

volumes:
  ldap_data:
    driver: local  # Use a local volume to persist LDAP data
  ldap_config:
    driver: local  # Use a local volume to persist LDAP configuration
EOF

# Add your current user to the 'docker' group to avoid using 'sudo' for Docker commands
sudo usermod -aG docker $USER

# Log out and back in, or run the following command to apply group changes without logging out
newgrp docker

# Launch the OpenLDAP and phpLDAPadmin services using Docker Compose
docker-compose up -d

# Check the status of the containers to ensure they are running
docker ps

# Access phpLDAPadmin through your web browser:
"10.49.76.69:8080" # Replace with your ubuntu server ip address

# Log in to phpLDAPadmin using the following credentials:
"cn=admin,dc=example,dc=org"
"adminpassword"

# Once logged in, manage your LDAP directory (add, edit, delete entries as needed)

# To stop the containers, run the following command
docker-compose down

# To update the Docker images, pull the latest versions and restart the services
docker-compose pull
docker-compose up -d
