#!/usr/bin/env bash
NAME="sensu-api"
LINKS="redis rabbitmq"

LINK_ARGS=""
for link in $LINKS; do
    LINK_ARGS+="--link ${link}:${link} "
done

docker run -d --name $NAME -p 4567:4567 $LINK_ARGS grepory/docker-sensu-api
