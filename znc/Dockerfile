FROM nightling/base

RUN yum -y install znc-{devel,modpython,modperl} \
	&& yum clean all

USER znc
COPY entrypoint.sh /
ENTRYPOINT ["/entrypoint.sh"]
