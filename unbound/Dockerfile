FROM fedora
MAINTAINER Nightling

RUN yum install -y unbound bind-utils \
	&& yum clean all \
	&& unbound-control-setup -d /etc/unbound/conf.d

ADD unbound /etc/unbound

EXPOSE 53/udp
EXPOSE 53

CMD ["unbound"]
