# update repository & upgrade package
sudo apt update && sudo apt upgrade -y

# install enviroment
sudo apt install -y git curl zip python3 python3-pip


# Install Docker
## command to uninstall all conflicting packages
for pkg in docker.io docker-doc docker-compose podman-docker containerd runc; do sudo apt-get remove $pkg; done

curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh
rm get-docker.sh
sudo usermod -aG docker $USER


echo 'Setup Server Successfully.'

