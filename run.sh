#!/bin/sh

# Run in this dir with `CLOUDID=MYCLOUDID CLOUDAUTH=MYPASSWORD DOMAIN=mydomain.com ./run.sh`
find -name '*.yml' -print0 | xargs -0 chmod 0600; ; rm -rf data; mkdir -p hbhome/{data,logs}; heartbeat -c $PWD/configs/http-100/heartbeat.yml --path.home $PWD/hbhome --path.data $PWD/hbhome/data --path.logs $PWD/hbhome/logs
