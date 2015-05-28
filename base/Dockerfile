FROM fedora:22
MAINTAINER Nightling

RUN dnf -y upgrade && dnf -y install \
	bzip2 \
	cronie \
	dnf-plugins-core \
	file \
	findutils \
	git \
	hostname \
	iproute \
	less \
	make \
	nmap-ncat \
	openssl \
	passwd \
	patch \
	perl \
	procps-ng \
	psmisc \
	python{3,}-pip \
	rsync \
	ssmtp \
	sudo \
	tar \
	which \
	xz \
	&& dnf clean all \
	&& groupadd -og $(id -g nobody) nogroup \
	&& rsync -a --del /etc/skel/ /root/ \
	&& passwd --lock root

ENV LANG="en_US.UTF-8" LC_COLLATE="C"

CMD ["bash"]
