FROM nightling/base-gui

RUN yum install -y firefox \
	&& yum clean all

ENV PULSE_SERVER /run/user/pulse/native

COPY entrypoint.sh /
ENTRYPOINT ["/entrypoint.sh"]
