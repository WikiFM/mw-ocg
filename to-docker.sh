#!/bin/bash
CURDIR=$(readlink -f $(dirname $(readlink -f $0)))

docker stop wikifm-ocg
docker rm wikifm-ocg

docker run --hostname ocg.wikifm.org --name wikifm-ocg -d -v $CURDIR:/srv/OCG \
 -e UID=$(id -u) \
 -e GID=$(id -g) \
 wikifm/ocg \
 /srv/OCG/applay-inside-docker.sh
