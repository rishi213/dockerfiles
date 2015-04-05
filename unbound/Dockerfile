FROM ubuntu
MAINTAINER Nightling

ADD https://unbound.net/downloads/unbound-latest.tar.gz /tmp/

RUN apt-get -qy update \
	&& apt-get -qy install libssl-dev libexpat1-dev build-essential \
	&& apt-get clean \
	&& cd /tmp \
	&& tar -xzf unbound-latest.tar.gz \
	&& cd $(find . -maxdepth 1 -type d -name 'unbound*') \
	&& ./configure --with-conf-file=/etc/unbound/unbound.conf \
	&& make && make install \
	&& apt-get -qy purge build-essential binutils make \
	&& apt-get -qy autoremove \
	&& rm -rf /tmp/* /var/lib/apt/lists/*

RUN useradd --system -d /etc/unbound -s /bin/false unbound \
	&& chown unbound: /etc/unbound \
	&& mkdir /etc/unbound/conf.d \
	&& sudo -u unbound unbound-anchor -v || true

ADD unbound.conf /etc/unbound/
ADD default.conf /etc/unbound/conf.d/

EXPOSE 53
EXPOSE 53/udp

ENTRYPOINT ["unbound"]
CMD ["-d"]
