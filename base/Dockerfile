FROM fedora

ENV LANG="en_US.UTF-8" LC_COLLATE="POSIX"

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
	yum-utils \
	&& yum clean all \
	&& groupadd -og $(id -g nobody) nogroup \
	&& cp /etc/skel/.bash* /root/ \
	&& rm -f /root/anaconda* \
	&& passwd --lock root

CMD ["bash"]
