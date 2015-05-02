FROM fedora
MAINTAINER Nightling

RUN yum install -y git python-pip \
	&& yum clean all

RUN git clone https://github.com/jrosdahl/miniircd /opt/miniircd \
	&& useradd -d /statedir miniircd

USER miniircd

EXPOSE 6667

ENTRYPOINT ["/opt/miniircd/miniircd"]

CMD ["--statedir=/statedir"]
