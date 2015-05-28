FROM nightling/base-gui

ADD google-chrome.repo /etc/yum.repos.d/

RUN dnf -y install google-chrome-stable \
	&& dnf clean all

COPY entrypoint.sh /
ENTRYPOINT ["/entrypoint.sh"]
