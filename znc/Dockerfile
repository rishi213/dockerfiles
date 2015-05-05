FROM fedora
MAINTAINER Nightling

RUN yum install -y gcc-c++ make redhat-rpm-config \
	&& yum clean all

RUN yum install -y znc-devel \
	&& yum clean all

USER znc

COPY entrypoint.sh /
ENTRYPOINT ["/entrypoint.sh"]
