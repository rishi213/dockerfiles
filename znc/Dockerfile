FROM fedora
MAINTAINER Nightling

RUN yum install -y znc-devel gcc-c++ redhat-rpm-config \
	&& yum clean all

COPY entrypoint.sh /

USER znc

ENTRYPOINT ["/entrypoint.sh"]
