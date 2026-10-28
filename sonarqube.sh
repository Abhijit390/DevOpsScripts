#! /bin/bash
cd /opt/
wget https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-26.9.0.129388.zip
unzip sonarqube-26.9.0.129388.zip
sudo dnf install java-21-amazon-corretto -y
useradd sonar
chown sonar:sonar sonarqube-26.9.0.129388 -R
chmod 777 sonarqube-26.9.0.129388 -R
su - sonar
