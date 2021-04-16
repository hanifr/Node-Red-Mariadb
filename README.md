# Node-Red-Mariadb
 Deployment of Node-Red apps and MariadbB on Ubuntu Platform via Docker-compose
```
adduser username

sudo usermod -aG sudo username

su - username

git clone https://github.com/hanifr/Node-Red-Mariadb.git

cd Node-Red-Mariadb

./InitDocker.sh

cd NR

docker-compose up -d
```
 ################################################################################
# Node-RED Stack or Compose
################################################################################
# docker stack deploy node-red --compose-file docker-compose-node-red.yml
# docker-compose -f docker-compose-node-red.yml -p myNoderedProject up
################################################################################
