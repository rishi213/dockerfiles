#!/bin/sh
CONTAINER_ID="skype-${UID}"
CONFIG="${HOME}/.Skype/shared.xml"
OPTS="-e XUID=${UID}"

if [ -f "$CONFIG" ]; then
	PORTS=`egrep -o 'Port>[0-9]+' "$CONFIG" | egrep -o '[0-9]+' | uniq | \
awk '{printf " -p %1$d:%1$d -p %1$d:%1$d/udp", $1}'`
	OPTS="${OPTS} ${PORTS}"
fi

docker rm $CONTAINER_ID 2> /dev/null

docker run -d -h skype --name $CONTAINER_ID \
-v /tmp/.X11-unix:/tmp/.X11-unix:ro -e DISPLAY=unix${DISPLAY} \
-v /etc/localtime:/etc/localtime:ro \
-v /etc/machine-id:/etc/machine-id:ro \
-v /run/user/${UID}/pulse:/run/user/pulse:ro \
-v ${HOME}/.Skype:/home/skype/.Skype \
-v ${HOME}/Downloads:/home/skype/Downloads \
${OPTS} nightling/skype
