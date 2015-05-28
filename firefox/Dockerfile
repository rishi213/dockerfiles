FROM nightling/base-gui

RUN dnf -y install firefox \
	&& dnf clean all

COPY entrypoint.sh /
ENTRYPOINT ["/entrypoint.sh"]
