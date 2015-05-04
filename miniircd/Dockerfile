FROM fedora
MAINTAINER Nightling

RUN yum install -y git python-pip \
	&& yum clean all

COPY source /opt/miniircd

EXPOSE 6667

USER nobody

ENTRYPOINT ["/opt/miniircd/miniircd"]

CMD ["--statedir=/statedir"]
