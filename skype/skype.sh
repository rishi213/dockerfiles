#!/bin/sh
CONTAINER_ID="skype-${UID}"

docker rm $CONTAINER_ID 2> /dev/null

docker run -d -h skype --name $CONTAINER_ID \
-v /tmp/.X11-unix:/tmp/.X11-unix:ro -e DISPLAY=unix${DISPLAY} \
-v /etc/localtime:/etc/localtime:ro \
-v /etc/machine-id:/etc/machine-id:ro \
-v /run/user/${UID}/pulse:/run/user/pulse:ro \
-v ${HOME}/.Skype:/home/skype/.Skype \
-v ${HOME}/Downloads:/home/skype/Downloads \
-e XUID=${UID} nightling/skype
