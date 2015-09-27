#!/bin/bash
docker inspect wikitolearn-dev-ocg &> /dev/null
if [[ $? -eq 0 ]] ; then
 docker stop wikitolearn-dev-ocg
 docker rm wikitolearn-dev-ocg

 docker rmi ocg:dev
 docker build -t ocg:dev .
fi
