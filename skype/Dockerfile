FROM nightling/base-gui

RUN yum -y install http://download.skype.com/linux/skype-4.3.0.37-fedora.i586.rpm \
	&& yum clean all

ENV PULSE_SERVER /run/user/pulse/native

COPY entrypoint.sh /
ENTRYPOINT ["/entrypoint.sh"]
