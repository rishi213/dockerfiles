#!/bin/sh
WORKDIR=/tmp/weevely-${UID}

mkdir -p -m 0777 ${WORKDIR}
echo "[#] ${WORKDIR}"

docker run -it --rm -v ${WORKDIR}:/home/weevely nightling/weevely $@
