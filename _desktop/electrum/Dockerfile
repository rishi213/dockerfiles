FROM nightling/base-gui

RUN dnf -y install PyQt4 \
	&& dnf clean all
	
RUN curl -o /tmp/.tar.gz https://download.electrum.org/Electrum-2.3.1.tar.gz \
	&& echo "8ff6804b6b0f95ac5043ee466183cb6dc27ce7a8 /tmp/.tar.gz" | sha1sum -c - \
	&& pip install /tmp/.tar.gz \
	&& rm -rf /tmp/.tar.gz ~/.cache

ENTRYPOINT ["entrypoint", "electrum"]
