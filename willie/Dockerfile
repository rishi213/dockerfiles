FROM nightling/base

RUN yum -y install willie \
	&& yum clean all

VOLUME ["/var/lib/willie"]

USER willie
ENTRYPOINT ["willie"]
