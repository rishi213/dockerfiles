FROM nightling/base-gui

RUN dnf -y install PyQt4 \
	&& dnf clean all

RUN URL="https://download.electrum.org/Electrum-2.3.2.tar.gz" \
	&& curl -o /tmp/.tar.gz "${URL}" \
	&& curl -o /tmp/.tar.gz.asc "${URL}.asc" \
	&& gpg2 --keyserver pool.sks-keyservers.net --recv-keys 2BD5824B7F9470E6 \
	&& gpg2 --verify /tmp/.tar.gz.asc /tmp/.tar.gz \
	&& pip install /tmp/.tar.gz \
	&& rm -rf /tmp/.tar.gz* ~/.cache

ENTRYPOINT ["entrypoint", "electrum"]
