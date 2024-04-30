apk update
apk add docker curl
rc-update add docker boot
service docker start
apk add py3-pip python3-dev libffi-dev openssl-dev gcc libc-dev make
apk add docker-compose

docker volume create portainer_data
docker volume create myst-data

docker run -d -p 8000:8000 -p 9443:9443 --name portainer --restart=always -v /var/run/docker.sock:/var/run/docker.sock -v portainer_data:/data portainer/portainer-ce:latest --admin-password=Login@123@@@
docker run --cap-add NET_ADMIN --net host --name myst -v myst-data:/var/lib/mysterium-node -d mysteriumnetwork/myst service --agreed-terms-and-conditions
docker run -d --name packetstream --restart=always -e CID=6HID packetstream/psclient:latest
docker run -d --name grass --restart=always -e GRASS_USER=devipearn@gmail.com -e GRASS_PASS=Login@123@@@ mrcolorrain/grass
