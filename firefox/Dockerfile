FROM nightling/base-gui

RUN yum -y install firefox \
	&& yum clean all

ENV PULSE_SERVER /run/user/pulse/native

COPY entrypoint.sh /
ENTRYPOINT ["/entrypoint.sh"]
