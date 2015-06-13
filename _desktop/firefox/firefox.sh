#!/bin/sh
CONTAINER_ID="firefox-${UID}"

docker rm "$CONTAINER_ID" 2> /dev/null

docker run -d -h firefox --name "$CONTAINER_ID" \
-v /tmp/.X11-unix:/tmp/.X11-unix:ro -e DISPLAY="unix${DISPLAY}" \
$(find /dev/dri ! -type d | awk '{printf " --device %s ", $1}') \
-v /etc/localtime:/etc/localtime:ro \
-v /etc/machine-id:/etc/machine-id:ro \
-v /run/user/${UID}/pulse:/run/user/pulse:ro \
-v "${HOME}/.mozilla/.mozilla-docker:/data/.mozilla" \
-v "${HOME}/Downloads:/data/Downloads" \
-e XUID=${UID} -e XGID=${GID} \
nightling/firefox $@
