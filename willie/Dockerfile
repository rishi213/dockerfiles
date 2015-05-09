FROM nightling/base

RUN yum -y install enchant {libxml2,libxslt}-devel \
	&& yum clean all

ADD source /opt/willie

RUN cd /opt/willie \
	&& ./setup.py install \
	&& useradd -rmd /data willie

USER willie
VOLUME /data

ENTRYPOINT ["willie"]
