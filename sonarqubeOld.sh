sudo dnf update -y
sudo dnf install docker -y
sudo docker --version
sudo systemctl start docker
sudo docker network create ci-network
sudo docker run -d \
  --name sonarqube \
  --restart unless-stopped \
  --network ci-network \
  -p 9000:9000 \
  sonarqube:lts-community
