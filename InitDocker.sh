#!/bin/bash
# Colors
_CYAN=`tput setaf 1`
_GREEN=`tput setaf 2`
_YELLOW=`tput setaf 3`
_BLUE=`tput setaf 4`
_MAGENTA=`tput setaf 5`
_CYAN=`tput setaf 6`
_RESET=`tput sgr0`

VERSION=1.0
echo "${_GREEN}Docker setup script v$VERSION.${_RESET}"
echo "${_GREEN}(please report issues to tronexia@gmail.com email with full output of this script with extra \"-x\" \"bash\" option)${_RESET}"
echo
echo -e "${_CYAN}Docker installation :: initiated${_RESET}"

apt update
apt install apt-transport-https ca-certificates curl software-properties-common
sleep 5

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sleep 2

add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"
sleep 2

apt update
sleep 2

apt-cache policy docker-ce
sleep 2

apt install docker-ce

systemctl status docker
sleep 5
sudo usermod -aG docker $USER

sudo chmod 666 /var/run/docker.sock

echo -e "${_CYAN}Docker installation :: finished${_RESET}"
echo