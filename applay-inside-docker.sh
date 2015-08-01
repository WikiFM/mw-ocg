#!/bin/bash
apt-get install rsync -y

for d in mw-ocg-bundler mw-ocg-latexer mw-ocg-service mw-ocg-texter ; do
 rsync -a --progress /srv/OCG/$d /var/lib/ocg/$d --exclude .git --delete --delete-excluded
 cd /var/lib/ocg/$d
 npm install
done

/root/run.sh
