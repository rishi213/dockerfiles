FROM nightling/base-gui

ADD google-chrome.repo /etc/yum.repos.d/

RUN yum -y install google-chrome-stable \
	&& yum clean all

ENV PULSE_SERVER /run/user/pulse/native

COPY entrypoint.sh /
ENTRYPOINT ["/entrypoint.sh"]
