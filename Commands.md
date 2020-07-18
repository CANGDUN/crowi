# Commands in Amazon EC2
## yum update
```bash
sudo yum update -y
```

## Install and configure Docker, Docker Compose
```bash
sudo yum install -y docker
sudo systemctl enable docker
sudo systemctl start docker
systemctl status docker
sudo usermod -aG docker ec2-user
sudo curl -L "https://github.com/docker/compose/releases/download/1.26.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
logout
```

## Configure Crowi
```bash
wget https://github.com/crowi/crowi/archive/v1.7.9.zip
unzip v1.7.9.zip
cd crowi-1.7.9/
# Apply Changes
sh createDotEnv.sh
docker-compose -f docker-compose.development.yml up
# Elasticsearch Error Happens
sh setESVolumePermission.sh
docker-compose -f docker-compose.development.yml up
# If error on searching
sh deleteESIndex.sh
```
