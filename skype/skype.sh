#!/bin/sh
CONTAINER_ID="skype-${UID}"

docker rm $CONTAINER_ID 2> /dev/null

docker run -d -h skype --name $CONTAINER_ID \
-v /tmp/.X11-unix:/tmp/.X11-unix:ro -e DISPLAY=unix${DISPLAY} \
-v /etc/machine-id:/etc/machine-id:ro \
-v /run/user/${UID}/pulse:/run/user/1000/pulse:ro \
-v ${HOME}/.config/pulse:/home/skype/.config/pulse:ro \
-v ${HOME}/.Skype:/home/skype/.Skype \
-v ${HOME}/Downloads:/home/skype/Downloads \
nightling/skype
