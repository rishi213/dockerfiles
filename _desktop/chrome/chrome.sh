#!/bin/sh
CONTAINER_ID="chrome-${UID}"

docker rm "$CONTAINER_ID" 2> /dev/null

docker run -d -h chrome --name "$CONTAINER_ID" \
-v /tmp/.X11-unix:/tmp/.X11-unix:ro -e DISPLAY="unix${DISPLAY}" \
-v /etc/localtime:/etc/localtime:ro \
-v /etc/machine-id:/etc/machine-id:ro \
-v /run/user/${UID}/pulse:/run/user/pulse:ro \
-v "${HOME}/.config/google-chrome-docker:/data/.config/google-chrome" \
-v "${HOME}/Downloads:/data/Downloads" \
-e XUID=${UID} -e XGID=${GID} \
nightling/chrome $@
