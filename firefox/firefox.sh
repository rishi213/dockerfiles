#!/bin/sh
CONTAINER_ID="firefox-${UID}"

docker rm $CONTAINER_ID 2> /dev/null

docker run -d --name $CONTAINER_ID \
-v /tmp/.X11-unix:/tmp/.X11-unix:ro -e DISPLAY=unix${DISPLAY} \
-v /etc/localtime:/etc/localtime:ro \
-v /etc/machine-id:/etc/machine-id:ro \
-v /run/user/${UID}/pulse:/run/user/pulse:ro \
-v ${HOME}/.mozilla-docker:/home/firefox/.mozilla \
-v ${HOME}/Downloads:/home/firefox/Downloads \
-e XUID=${UID} nightling/firefox
