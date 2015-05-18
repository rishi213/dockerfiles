FROM fedora

RUN yum -y update \
	&& yum -y install \
	bzip2 \
	git \
	iproute \
	nmap-ncat \
	openssl \
	perl-CPAN \
	python{3,}-pip \
	redhat-lsb-core \
	rubygems \
	sudo \
	&& yum clean all \
	&& cp /etc/skel/.bash* /root/ \
	&& rm -f /root/anaconda* \
	&& passwd --lock root

CMD ["bash"]
