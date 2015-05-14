FROM nightling/base-gui

RUN curl http://download.skype.com/linux/skype-4.3.0.37-fedora.i586.rpm > /tmp/.rpm \
	&& echo "2318acc6d275daa90c98f5edf642b7cad9369f87 /tmp/.rpm" | sha1sum -c - \
	&& yum -y install /tmp/.rpm && rm -f /tmp/.rpm \
	&& yum clean all

ENV PULSE_SERVER /run/user/pulse/native

COPY entrypoint.sh /
ENTRYPOINT ["/entrypoint.sh"]
