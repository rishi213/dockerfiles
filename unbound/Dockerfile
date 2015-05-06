FROM nightling/base

RUN yum install -y unbound bind-utils \
	&& yum clean all \
	&& unbound-control-setup -d /etc/unbound/conf.d

ADD etc /etc

EXPOSE 53/udp
EXPOSE 53

CMD ["unbound"]
