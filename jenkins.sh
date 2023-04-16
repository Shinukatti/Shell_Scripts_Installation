#!/bin/bash

# Update package list
sudo apt-get update

# Install Java
sudo apt-get install -y default-jre

# Add Jenkins key to the system
wget -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo apt-key add -

# Add the Jenkins repository to the system
echo "deb https://pkg.jenkins.io/debian-stable binary/" | sudo tee -a /etc/apt/sources.list.d/jenkins.list

# Update package list and install Jenkins
sudo apt-get update
sudo apt-get install -y jenkins

# Start Jenkins service
sudo systemctl start jenkins

# Enable Jenkins service to start automatically at system startup
sudo systemctl enable jenkins

# Check Jenkins service status
sudo systemctl status jenkins

# Display the Jenkins admin password
echo "Jenkins admin password:"
sudo cat /var/lib/jenkins/secrets/initialAdminPassword

